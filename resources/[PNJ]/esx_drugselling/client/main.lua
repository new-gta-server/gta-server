ESX = nil

local myJob = nil

local cokeQTE = 0

local marijuanaQTE = 0

local methQTE = 0

local heroinQTE = 0

local lsdQTE = 0


local playerPed = nil
local coords = {}
local currentped = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

Citizen.CreateThread(function()
    while(true) do
		playerPed = PlayerPedId()
		coords = GetEntityCoords(PlayerPedId())
        Citizen.Wait(1000)
    end
end)

function DrawText3Ds(x, y, z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local factor = #text / 370
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	DrawRect(_x,_y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 120)
end

RegisterNetEvent('esx_npcdrugsales:ReturnInventory')
AddEventHandler('esx_npcdrugsales:ReturnInventory', function(cokeNbr, cokepNbr, methNbr, methpNbr, marijuanaNbr, marijuanapNbr, heroinNbr, heroinpNbr, Job1)
    cokeQTE       = cokeNbr
    
    methQTE 	  = methNbr
    
    marijuanaQTE 	  = marijuanaNbr
    
    heroinQTE       = heroinNbr
    
    lsdQTE       = heroinNbr
    
	myJob			= Job1
end)

RegisterNetEvent('esx_npcdrugsales:RefreshJob')
AddEventHandler('esx_npcdrugsales:RefreshJob', function(Job1)
	myJob = Job1
end)

Citizen.CreateThread(function()
    while true do
		Wait(5000)
		TriggerServerEvent('esx_npcdrugsales:GetJob')
		TriggerServerEvent('esx_npcdrugsales:GetUserInventory')
    end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  TriggerServerEvent('esx_npcdrugsales:GetJob')
end)

function Vente(pos1)
    local player = playerPed
    local playerloc = coords
    local distance = GetDistanceBetweenCoords(pos1.x, pos1.y, pos1.z, playerloc['x'], playerloc['y'], playerloc['z'], true)

    if distance <= 2 then
		TriggerServerEvent('esx_npcdrugsales:vente', playerloc)
    elseif distance > 2 then
		TriggerServerEvent('esx_npcdrugsales:dist')
    end
end

Citizen.CreateThread(function()
	while true do
		Wait(15)
		
		--if myJob == "police" or myJob == "sheriff" then
			--return
		--end
		
		if (cokeQTE ~= 0 or methQTE ~= 0 or marijuanaQTE ~= 0 or heroinQTE ~= 0 or lsdQTE) then
			--[[l78Z7enfGGarnS4x0ojcCwKDXf+SW/+1ERTAio7M8MY=]]
				local handle, ped = FindFirstPed()
				repeat
					success, ped = FindNextPed(handle)
					local pos = GetEntityCoords(ped)
					local distance = GetDistanceBetweenCoords(pos.x, pos.y, pos.z, coords['x'], coords['y'], coords['z'], true)
					if not IsPedInAnyVehicle(playerPed) then
						if DoesEntityExist(ped) then
							if not IsPedDeadOrDying(ped) then
								if not IsPedInAnyVehicle(ped) then
									local pedType = GetPedType(ped)
									if pedType ~= 28 and not IsPedAPlayer(ped) then
										currentped = pos
										if distance <= 2 and ped ~= playerPed and ped ~= oldped then
											DrawText3Ds(pos.x, pos.y, pos.z, GuTu.Text['press'])
											if IsControlJustPressed(1, 311) then
												oldped = ped
												--SetEntityHeading(ped, 180)
												TaskLookAtCoord(ped, coords['x'], coords['y'], coords['z'], -1, 2048, 3)
												TaskStandStill(ped, 100.0)
												SetEntityAsMissionEntity(ped)
												local pos1 = GetEntityCoords(ped)
												TriggerServerEvent('esx_npcdrugsales:GetUserInventory')
												Wait(1000)
												ESX.ShowNotification(GuTu.Text['process'])
												Wait(3000)
												Vente(pos1)
												Wait(2500)
												SetPedAsNoLongerNeeded(oldped)
											end
										end
									end
								end
							end
						end
					end
					
				until not success
				EndFindPed(handle)
			--[[l78Z7enfGGarnS4x0ojcCwKDXf+SW/+1ERTAio7M8MY=]]
		end

	end
end)

RegisterNetEvent('esx_npcdrugsales:animation')
AddEventHandler('esx_npcdrugsales:animation', function()
	local pid = PlayerPedId()
	RequestAnimDict("amb@prop_human_bum_bin@idle_b")
	while (not HasAnimDictLoaded("amb@prop_human_bum_bin@idle_b")) do Citizen.Wait(0) end
	TaskPlayAnim(pid,"amb@prop_human_bum_bin@idle_b","idle_d",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0)
	Wait(750)
	StopAnimTask(pid, "amb@prop_human_bum_bin@idle_b","idle_d", 1.0)
end)

RegisterNetEvent('esx_npcdrugsales:poucave')
AddEventHandler('esx_npcdrugsales:poucave', function(posx, posy, posz)
	TriggerServerEvent('esx_addons_gcphone:startCall', 'police' and 'sheriff', GuTu.Text['process'], { x = posx, y = posy, z = posz })
	
	
end)

--l78Z7enfGGarnS4x0ojcCwKDXf+SW/+1ERTAio7M8MY=