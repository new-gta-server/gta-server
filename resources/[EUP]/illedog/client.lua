--[[ Variables ]]--
    -- DO NOT CHANGE --
    local just_started = true
    local k8_name = "Default"
    local spawned_ped = nil
    local following = false
    local attacking = false
    local attacked_player = 0
    local searching = false
    local playing_animation = false

    local animations = {
        ['Normal'] = {
            sit = {
                dict = "creatures@rottweiler@amb@world_dog_sitting@idle_a",
                anim = "idle_b"
            },
            laydown = {
                dict = "creatures@rottweiler@amb@sleep_in_kennel@",
                anim = "sleep_in_kennel"
            },
            searchhit = {
                dict = "creatures@rottweiler@indication@",
                anim = "indicate_high"
            }
        }
    }
--]]

--[[ Tables ]]--
local language = {}
--]]

--[[ NUI Messages ]]--

    -- Open Menu --
    function EnableMenu()
        SetNuiFocus(true, true)
        SendNUIMessage({
            type = "open_k8_menu"
        })
    end

--]]

--[[ NUI Callbacks ]]--

    RegisterNUICallback("closemenu", function(data)
        SetNuiFocus(false, false)
    end)

    RegisterNUICallback("updatename", function(data)
        k8_name = data.name
    end)

    RegisterNUICallback("spawnk8", function(data)
        TriggerEvent("k8:Togglek8", data.model)
    end)

    RegisterNUICallback("vehicletoggle", function(data)
        if spawned_ped ~= nil then
            TriggerServerEvent("k8:RequestVehicleToggle")
        end
    end)

    RegisterNUICallback("vehiclesearch", function(data)
        if spawned_ped ~= nil then
            TriggerServerEvent("k8:RequestItems")
        end
    end)

    RegisterNUICallback("sit", function(data)
        if spawned_ped ~= nil then
            PlayAnimation(animations['Normal'].sit.dict, animations['Normal'].sit.anim)
        end
    end)

    RegisterNUICallback("laydown", function(data)
        if spawned_ped ~= nil then
            PlayAnimation(animations['Normal'].laydown.dict, animations['Normal'].laydown.anim)
        end
    end)

--]]

--[[ Main Event Handlers ]]--

    -- Updates Language Settings
    RegisterNetEvent("k8:UpdateLanguage")
    AddEventHandler("k8:UpdateLanguage", function(commands)
        language = commands
        Citizen.Trace(tostring(json.encode(language)))
    end)

    -- Opens k8 Menu
    RegisterNetEvent("k8:OpenMenu")
    AddEventHandler("k8:OpenMenu", function(pedRestriction, pedList)
        if pedRestriction then
            if CheckPedRestriction(GetLocalPed(), pedList) then
                EnableMenu()
            else
                Notification(tostring("~r~You do not have the right PED to use the k8."))
            end
        else
            EnableMenu()
        end
    end)

    -- Error for Identifier Whitelist
    RegisterNetEvent("k8:IdentifierRestricted")
    AddEventHandler("k8:IdentifierRestricted", function()
        Notification(tostring("~r~You do not match any identifiers in the whitelist."))
    end)

    -- Spawns and Deletes k8
    RegisterNetEvent("k8:Togglek8")
    AddEventHandler("k8:Togglek8", function(model)
        if spawned_ped == nil then
            local ped = GetHashKey(model)
            RequestModel(ped)
            while not HasModelLoaded(ped) do
                Citizen.Wait(1)
                RequestModel(ped)
            end
            local plyCoords = GetOffsetFromEntityInWorldCoords(GetLocalPed(), 0.0, 2.0, 0.0)
            local dog = CreatePed(28, ped, plyCoords.x, plyCoords.y, plyCoords.z, GetEntityHeading(GetLocalPed()), 0, 1)
            spawned_ped = dog
            SetBlockingOfNonTemporaryEvents(spawned_ped, true)
            SetPedFleeAttributes(spawned_ped, 0, 0)
            SetPedRelationshipGroupHash(spawned_ped, GetHashKey("k8"))
            local blip = AddBlipForEntity(spawned_ped)
            SetBlipAsFriendly(blip, true)
            SetBlipSprite(blip, 442)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(tostring("k8: ".. k8_name))
            EndTextCommandSetBlipName(blip)
            NetworkRegisterEntityAsNetworked(spawned_ped)
            GiveWeaponToPed(spawned_ped, GetHashKey("WEAPON_ANIMAL"), 200, true, true);
            while not NetworkGetEntityIsNetworked(spawned_ped) do
                NetworkRegisterEntityAsNetworked(spawned_ped)
                Citizen.Wait(1)
            end
        else
            local has_control = false
            RequestNetworkControl(function(cb)
                has_control = cb
            end)
            if has_control then
                SetEntityAsMissionEntity(spawned_ped, true, true)
                DeleteEntity(spawned_ped)
                spawned_ped = nil
                if attacking then
                    SetPedRelationshipGroupDefaultHash(target_ped, GetHashKey("CIVMALE"))
                    target_ped = nil
                    attacking = false
                end
                following = false
                searching = false
                playing_animation = false
            end
        end
    end)

    -- Toggles k8 to Follow / Heel
    RegisterNetEvent("k8:ToggleFollow")
    AddEventHandler("k8:ToggleFollow", function()
        if spawned_ped ~= nil then
            if not following then
                local has_control = false
                RequestNetworkControl(function(cb)
                    has_control = cb
                end)
                if has_control then
                    TaskFollowToOffsetOfEntity(spawned_ped, GetLocalPed(), 0.5, 0.0, 0.0, 5.0, -1, 0.0, 1)
                    SetPedKeepTask(spawned_ped, true)
                    following = true
                    attacking = false
                    Notification(tostring(k8_name .. " " .. language.follow))
                end
            else
                local has_control = false
                RequestNetworkControl(function(cb)
                    has_control = cb
                end)
                if has_control then
                    SetPedKeepTask(spawned_ped, false)
                    ClearPedTasks(spawned_ped)
                    following = false
                    attacking = false
                    Notification(tostring(k8_name .. " " .. language.stop))
                end
            end
        end
    end)

    -- Toggles k8 In and Out of Vehicles
    RegisterNetEvent("k8:ToggleVehicle")
    AddEventHandler("k8:ToggleVehicle", function(isRestricted, vehList)
        if not searching then
            if IsPedInAnyVehicle(spawned_ped, false) then
                SetEntityInvincible(spawned_ped, true)
                SetPedCanRagdoll(spawned_ped, false)
                TaskLeaveVehicle(spawned_ped, GetVehiclePedIsIn(spawned_ped, false), 256)
                Notification(tostring(k8_name .. " " .. language.exit))
                Wait(2000)
                SetPedCanRagdoll(spawned_ped, true)
                SetEntityInvincible(spawned_ped, false)
            else
                if not IsPedInAnyVehicle(GetLocalPed(), false) then
                    local plyCoords = GetEntityCoords(GetLocalPed(), false)
                    local vehicle = GetVehicleAheadOfPlayer()
                    local door = GetClosestVehicleDoor(vehicle)
                    if door ~= false then
                        if isRestricted then
                            if CheckVehicleRestriction(vehicle, vehList) then
                                TaskEnterVehicle(spawned_ped, vehicle, -1, door, 2.0, 1, 0)
                                Notification(tostring(k8_name .. " " .. language.enter))
                            end
                        else
                            TaskEnterVehicle(spawned_ped, vehicle, -1, door, 2.0, 1, 0)
                            Notification(tostring(k8_name .. " " .. language.enter))
                        end
                    end
                else
                    local vehicle = GetVehiclePedIsIn(GetLocalPed(), false)
                    local door = 1
                    if isRestricted then
                        if CheckVehicleRestriction(vehicle, vehList) then
                            TaskEnterVehicle(spawned_ped, vehicle, -1, door, 2.0, 1, 0)
                            Notification(tostring(k8_name .. " " .. language.enter))
                        end
                    else
                        TaskEnterVehicle(spawned_ped, vehicle, -1, door, 2.0, 1, 0)
                        Notification(tostring(k8_name .. " " .. language.enter))
                    end
                end
            end
        end
    end)

    -- Triggers k8 to Attack
    RegisterNetEvent("k8:ToggleAttack")
    AddEventHandler("k8:ToggleAttack", function(target)
        if not attacking and not searching then
            if IsPedAPlayer(target) then
                local has_control = false
                RequestNetworkControl(function(cb)
                    has_control = cb
                end)
                if has_control then
                    local player = GetPlayerFromServerId(GetPlayerId(target))
                    SetPedRelationshipGroupHash(GetPlayerPed(player), k8TargetHash)
                    SetCanAttackFriendly(spawned_ped, true, true)
                    TaskPutPedDirectlyIntoMelee(spawned_ped, GetPlayerPed(player), 0.0, -1.0, 0.0, 0)
                    attacked_player = player
                end
            else
                local has_control = false
                RequestNetworkControl(function(cb)
                    has_control = cb
                end)
                if has_control then
                    SetCanAttackFriendly(spawned_ped, true, true)
                    TaskPutPedDirectlyIntoMelee(spawned_ped, target, 0.0, -1.0, 0.0, 0)
                    attacked_player = 0
                end
            end
            attacking = true
            following = false
            Notification(tostring(k8_name .. " " .. language.attack))
        end
    end)

    -- Triggers k8 to Search Vehicle
    RegisterNetEvent("k8:SearchVehicle")
    AddEventHandler("k8:SearchVehicle", function(items, openDoors)
        local vehicle = GetVehicleAheadOfPlayer()
        Citizen.Trace(tostring(vehicle))
        Citizen.Trace(tostring(json.encode(items)))
        if vehicle ~= 0 and not searching then
            searching = true
            local found_table = {}

            Notification(tostring(k8_name .. " commence à fouiller..."))
            
            if openDoors then
                SetVehicleDoorOpen(vehicle, 0, 0, 0)
                SetVehicleDoorOpen(vehicle, 1, 0, 0)
                SetVehicleDoorOpen(vehicle, 2, 0, 0)
                SetVehicleDoorOpen(vehicle, 3, 0, 0)
                SetVehicleDoorOpen(vehicle, 4, 0, 0)
                SetVehicleDoorOpen(vehicle, 5, 0, 0)
                SetVehicleDoorOpen(vehicle, 6, 0, 0)
                SetVehicleDoorOpen(vehicle, 7, 0, 0)
            end

            -- Back Right
            local offsetOne = GetOffsetFromEntityInWorldCoords(vehicle, 2.0, -2.0, 0.0)
            TaskGoToCoordAnyMeans(spawned_ped, offsetOne.x, offsetOne.y, offsetOne.z, 5.0, 0, 0, 1, 10.0)
            local oneItem = ChooseItem(items)
            if oneItem ~= false then
                table.insert(found_table, oneItem)
            end

            Citizen.Wait(7000)

            -- Front Right
            local offsetTwo = GetOffsetFromEntityInWorldCoords(vehicle, 2.0, 2.0, 0.0)
            TaskGoToCoordAnyMeans(spawned_ped, offsetTwo.x, offsetTwo.y, offsetTwo.z, 5.0, 0, 0, 1, 10.0)
            local twoItem = ChooseItem(items)
            if twoItem ~= false then
                table.insert(found_table, twoItem)
            end

            Citizen.Wait(7000)

            -- Front Left
            local offsetThree = GetOffsetFromEntityInWorldCoords(vehicle, -2.0, 2.0, 0.0)
            TaskGoToCoordAnyMeans(spawned_ped, offsetThree.x, offsetThree.y, offsetThree.z, 5.0, 0, 0, 1, 10.0)
            local threeItem = ChooseItem(items)
            if threeItem ~= false then
                table.insert(found_table, threeItem)
            end

            Citizen.Wait(7000)

            -- Front Right
            local offsetFour = GetOffsetFromEntityInWorldCoords(vehicle, -2.0, -2.0, 0.0)
            TaskGoToCoordAnyMeans(spawned_ped, offsetFour.x, offsetFour.y, offsetFour.z, 5.0, 0, 0, 1, 10.0)
            local fourItem = ChooseItem(items)
            if fourItem ~= false then
                table.insert(found_table, fourItem)
            end

            Citizen.Wait(7000)

            if openDoors then
                SetVehicleDoorsShut(vehicle, 0)
            end

            local stringified_table = {}
            local found_illegal_item = false
            for a = 1, #found_table do
                table.insert(stringified_table, found_table[a].item)
                if found_table[a].illegal then
                    found_illegal_item = true
                end
            end

            if found_illegal_item then
                PlayAnimation(animations['Normal'].searchhit.dict, animations['Normal'].searchhit.anim)
                Citizen.Wait(3000)
                PlayAnimation(animations['Normal'].sit.dict, animations['Normal'].sit.anim)
            end

            Notification(tostring(k8_name .. " a trouvé [ " .. tostring(table.concat(stringified_table, ", ")) .. " ]."))
            searching = false
        end
    end)

--]]

--[[ Threads ]]

    -- Controls Menu
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)

            -- Trigger Opens Menu
            if IsControlPressed(1, 344)  then
                TriggerServerEvent("k8:RequestOpenMenu")
            end

            -- Trigger Attack
            if IsControlJustPressed(1, 101) and IsPlayerFreeAiming(PlayerId()) then
                local bool, target = GetEntityPlayerIsFreeAimingAt(PlayerId())

                if bool then
                    if IsEntityAPed(target) then
                        TriggerEvent("k8:ToggleAttack", target)
                    end
                end
            end

            -- Trigger Follow
            if IsControlJustPressed(1, 101) and not IsPlayerFreeAiming(PlayerId()) then
                TriggerEvent("k8:ToggleFollow")
            end

            if IsControlJustPressed(1, 101) then
                if spawned_ped ~= nil then
                    TriggerServerEvent("k8:RequestVehicleToggle")
                end
            end
        end
    end)

    -- DO NOT TOUCH (CLEANER)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)

            -- Setting k8 Settings
            if just_started then
                Citizen.Wait(1000)
                local resource = GetCurrentResourceName()
                SendNUIMessage({
                    type = "update_resource_name",
                    name = resource
                })
                just_started = false
                TriggerServerEvent("k8:SendLanguage")
            end

            -- Deletes k8 when you die
            if spawned_ped ~= nil and IsEntityDead(GetLocalPed()) then
                TriggerEvent("k8:Togglek8")
            end
        end
    end)

--]]

--[[ EXTRA FUNCTIONS ]]--

-- Gets Local Ped
function GetLocalPed()
    return GetPlayerPed(PlayerId())
end

-- Gets Control Of Ped
function RequestNetworkControl(callback)
    local netId = NetworkGetNetworkIdFromEntity(spawned_ped)
    local timer = 0
    NetworkRequestControlOfNetworkId(netId)
    while not NetworkHasControlOfNetworkId(netId) do
        Citizen.Wait(1)
        NetworkRequestControlOfNetworkId(netId)
        timer = timer + 1
        if timer == 5000 then
            Citizen.Trace("Control failed")
            callback(false)
            break
        end
    end
    callback(true)
end

-- Gets Players
function GetPlayers()
    local players = {}
    for i = 0, 32 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end
    return players
end

-- Get Searching item
function ChooseItem(items)
    local number = math.random(1, 100)

    if number > 70 and number < 95 then -- 70 | 95
        local randomItem = math.random(1, #items)
        return items[randomItem]
    else
        return false
    end
end

-- Set k8 Animation (Sit / Laydown)
function PlayAnimation(dict, anim)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(0)
    end

    TaskPlayAnim(spawned_ped, dict, anim, 8.0, -8.0, -1, 2, 0.0, 0, 0, 0)
end

-- Gets Player ID
function GetPlayerId(target_ped)
    local players = GetPlayers()
    for a = 1, #players do
        local ped = GetPlayerPed(players[a])
        local server_id = GetPlayerServerId(players[a])
        if target_ped == ped then
            return server_id
        end
    end
    return 0
end

-- Checks Ped Restriction
function CheckPedRestriction(ped, PedList)
	for i = 1, #PedList do
		if GetHashKey(PedList[i]) == GetEntityModel(ped) then
			return true
		end
	end
	return false
end

-- Checks Vehicle Restriction
function CheckVehicleRestriction(vehicle, VehicleList)
	for i = 1, #VehicleList do
		if GetHashKey(VehicleList[i]) == GetEntityModel(vehicle) then
			return true
		end
	end
	return false
end

-- Gets Vehicle Ahead Of Player
function GetVehicleAheadOfPlayer()
    local lPed = GetLocalPed()
    local lPedCoords = GetEntityCoords(lPed, alive)
    local lPedOffset = GetOffsetFromEntityInWorldCoords(lPed, 0.0, 3.0, 0.0)
    local rayHandle = StartShapeTestCapsule(lPedCoords.x, lPedCoords.y, lPedCoords.z, lPedOffset.x, lPedOffset.y, lPedOffset.z, 1.2, 10, lPed, 7)
    local returnValue, hit, endcoords, surface, vehicle = GetShapeTestResult(rayHandle)

    if hit then
        return vehicle
    else
        return false
    end
end

-- Gets Closest Door To Player
function GetClosestVehicleDoor(vehicle)
    local plyCoords = GetEntityCoords(GetLocalPed(), false)
	local backleft = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "door_dside_r"))
	local backright = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "door_pside_r"))
	local bldistance = GetDistanceBetweenCoords(backleft['x'], backleft['y'], backleft['z'], plyCoords.x, plyCoords.y, plyCoords.z, 1)
    local brdistance = GetDistanceBetweenCoords(backright['x'], backright['y'], backright['z'], plyCoords.x, plyCoords.y, plyCoords.z, 1)

    local found_door = false

    if (bldistance < brdistance) then
        found_door = 1
    elseif(brdistance < bldistance) then
        found_door = 2
    end

    return found_door
end

-- Displays Notification
function Notification(message)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(message)
	DrawNotification(0, 1)
end
--]]
