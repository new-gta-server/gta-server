
Citizen.CreateThread(function()
    while not Config.useKeys do
        Citizen.Wait(1)
            hasWeedKey = true
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)

        local playerPosition = GetEntityCoords(GetPlayerPed(-1))
        local playerPed = GetPlayerPed(-1)

        if hasWeedKey then
            -- MAIN METH TELEPORTER
            if (GetDistanceBetweenCoords(playerPosition, Config.Locations.weed.teleporters.enter.x, Config.Locations.weed.teleporters.enter.y, Config.Locations.weed.teleporters.enter.z, true) < 5) then
                DrawMarker(2, Config.Locations.weed.teleporters.enter.x, Config.Locations.weed.teleporters.enter.y, Config.Locations.weed.teleporters.enter.z-0.20, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 200, 0, 0, 0, 1, 0, 0, 0)
                if (GetDistanceBetweenCoords(playerPosition, Config.Locations.weed.teleporters.enter.x, Config.Locations.weed.teleporters.enter.y, Config.Locations.weed.teleporters.enter.z, true) < 3.5) then
                    DrawText3D(Config.Locations.weed.teleporters.enter.x, Config.Locations.weed.teleporters.enter.y, Config.Locations.weed.teleporters.enter.z+0.15, '~g~E~w~ - Enter')
                    if IsControlJustReleased(0, Keys["E"]) then
                        teleportToWeedLab()
                    end
                end
            end

            -- MAIN METH EXIT TELEPORTER
            if (GetDistanceBetweenCoords(playerPosition, Config.Locations.weed.teleporters.exit.x, Config.Locations.weed.teleporters.exit.y, Config.Locations.weed.teleporters.exit.z, true) < 5) then
                DrawMarker(2, Config.Locations.weed.teleporters.exit.x, Config.Locations.weed.teleporters.exit.y, Config.Locations.weed.teleporters.exit.z-0.20, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 200, 0, 0, 0, 1, 0, 0, 0)
                if (GetDistanceBetweenCoords(playerPosition, Config.Locations.weed.teleporters.exit.x, Config.Locations.weed.teleporters.exit.y, Config.Locations.weed.teleporters.exit.z, true) < 3.5) then
                    DrawText3D(Config.Locations.weed.teleporters.exit.x, Config.Locations.weed.teleporters.exit.y, Config.Locations.weed.teleporters.exit.z+0.15, '~g~E~w~ - Leave')
                    if IsControlJustReleased(0, Keys["E"]) then
                        teleportOutOfWeedLab()
                    end
                end
            end
        end
    end
end)

function teleportOutOfWeedLab()
    local entity = GetPlayerPed(-1)
    
    DoScreenFadeOut(200)
    Citizen.Wait(200)
    SetEntityCoords(entity, Config.Locations.weed.teleporters.enter.x, Config.Locations.weed.teleporters.enter.y, Config.Locations.weed.teleporters.enter.z, 0, 0, 0, false)

    PlaceObjectOnGroundProperly(entity)
    Citizen.Wait(1500)
    DoScreenFadeIn(200)
end

function teleportToWeedLab()
    local entity = GetPlayerPed(-1)
    
    DoScreenFadeOut(200)
    Citizen.Wait(200)
    SetEntityCoords(entity, Config.Locations.weed.teleporters.exit.x, Config.Locations.weed.teleporters.exit.y, Config.Locations.weed.teleporters.exit.z, 0, 0, 0, false)

    PlaceObjectOnGroundProperly(entity)
    Citizen.Wait(1500)
    DoScreenFadeIn(200)
end
