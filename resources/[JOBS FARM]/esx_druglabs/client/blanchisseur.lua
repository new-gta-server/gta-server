
Citizen.CreateThread(function()
    while not Config.useKeys do
        Citizen.Wait(1)
            hasBlanchisseurKey = true
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)

        local playerPosition = GetEntityCoords(GetPlayerPed(-1))
        local playerPed = GetPlayerPed(-1)

        if hasBlanchisseurKey then
            -- MAIN METH TELEPORTER
            if (GetDistanceBetweenCoords(playerPosition, Config.Locations.blanchisseur.teleporters.enter.x, Config.Locations.blanchisseur.teleporters.enter.y, Config.Locations.blanchisseur.teleporters.enter.z, true) < 5) then
                DrawMarker(2, Config.Locations.blanchisseur.teleporters.enter.x, Config.Locations.blanchisseur.teleporters.enter.y, Config.Locations.blanchisseur.teleporters.enter.z-0.20, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 200, 0, 0, 0, 1, 0, 0, 0)
                if (GetDistanceBetweenCoords(playerPosition, Config.Locations.blanchisseur.teleporters.enter.x, Config.Locations.blanchisseur.teleporters.enter.y, Config.Locations.blanchisseur.teleporters.enter.z, true) < 3.5) then
                    DrawText3D(Config.Locations.blanchisseur.teleporters.enter.x, Config.Locations.blanchisseur.teleporters.enter.y, Config.Locations.blanchisseur.teleporters.enter.z+0.15, '~g~E~w~ - Enter')
                    if IsControlJustReleased(0, Keys["E"]) then
                        teleportToBlanchisseurLab()
                    end
                end
            end

            -- MAIN METH EXIT TELEPORTER
            if (GetDistanceBetweenCoords(playerPosition, Config.Locations.blanchisseur.teleporters.exit.x, Config.Locations.blanchisseur.teleporters.exit.y, Config.Locations.blanchisseur.teleporters.exit.z, true) < 5) then
                DrawMarker(2, Config.Locations.blanchisseur.teleporters.exit.x, Config.Locations.blanchisseur.teleporters.exit.y, Config.Locations.blanchisseur.teleporters.exit.z-0.20, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 200, 0, 0, 0, 1, 0, 0, 0)
                if (GetDistanceBetweenCoords(playerPosition, Config.Locations.blanchisseur.teleporters.exit.x, Config.Locations.blanchisseur.teleporters.exit.y, Config.Locations.blanchisseur.teleporters.exit.z, true) < 3.5) then
                    DrawText3D(Config.Locations.blanchisseur.teleporters.exit.x, Config.Locations.blanchisseur.teleporters.exit.y, Config.Locations.blanchisseur.teleporters.exit.z+0.15, '~g~E~w~ - Leave')
                    if IsControlJustReleased(0, Keys["E"]) then
                        teleportOutOfBlanchisseurLab()
                    end
                end
            end
        end
    end
end)

function teleportOutOfBlanchisseurLab()
    local entity = GetPlayerPed(-1)
    
    DoScreenFadeOut(200)
    Citizen.Wait(200)
    SetEntityCoords(entity, Config.Locations.blanchisseur.teleporters.enter.x, Config.Locations.blanchisseur.teleporters.enter.y, Config.Locations.blanchisseur.teleporters.enter.z, 0, 0, 0, false)

    PlaceObjectOnGroundProperly(entity)
    Citizen.Wait(1500)
    DoScreenFadeIn(200)
end

function teleportToBlanchisseurLab()
    local entity = GetPlayerPed(-1)
    
    DoScreenFadeOut(200)
    Citizen.Wait(200)
    SetEntityCoords(entity, Config.Locations.blanchisseur.teleporters.exit.x, Config.Locations.blanchisseur.teleporters.exit.y, Config.Locations.blanchisseur.teleporters.exit.z, 0, 0, 0, false)

    PlaceObjectOnGroundProperly(entity)
    Citizen.Wait(1500)
    DoScreenFadeIn(200)
end
