
Citizen.CreateThread(function()
    while not Config.useKeys do
        Citizen.Wait(1)
            hasHeroKey = true
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)

        local playerPosition = GetEntityCoords(GetPlayerPed(-1))
        local playerPed = GetPlayerPed(-1)

        if hasHeroKey then
            -- MAIN METH TELEPORTER
            if (GetDistanceBetweenCoords(playerPosition, Config.Locations.hero.teleporters.enter.x, Config.Locations.hero.teleporters.enter.y, Config.Locations.hero.teleporters.enter.z, true) < 5) then
                DrawMarker(2, Config.Locations.hero.teleporters.enter.x, Config.Locations.hero.teleporters.enter.y, Config.Locations.hero.teleporters.enter.z-0.20, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 200, 0, 0, 0, 1, 0, 0, 0)
                if (GetDistanceBetweenCoords(playerPosition, Config.Locations.hero.teleporters.enter.x, Config.Locations.hero.teleporters.enter.y, Config.Locations.hero.teleporters.enter.z, true) < 3.5) then
                    DrawText3D(Config.Locations.hero.teleporters.enter.x, Config.Locations.hero.teleporters.enter.y, Config.Locations.hero.teleporters.enter.z+0.15, '~g~E~w~ - Enter')
                    if IsControlJustReleased(0, Keys["E"]) then
                        teleportToHeroLab()
                    end
                end
            end

            -- MAIN METH EXIT TELEPORTER
            if (GetDistanceBetweenCoords(playerPosition, Config.Locations.hero.teleporters.exit.x, Config.Locations.hero.teleporters.exit.y, Config.Locations.hero.teleporters.exit.z, true) < 5) then
                DrawMarker(2, Config.Locations.hero.teleporters.exit.x, Config.Locations.hero.teleporters.exit.y, Config.Locations.hero.teleporters.exit.z-0.20, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 200, 0, 0, 0, 1, 0, 0, 0)
                if (GetDistanceBetweenCoords(playerPosition, Config.Locations.hero.teleporters.exit.x, Config.Locations.hero.teleporters.exit.y, Config.Locations.hero.teleporters.exit.z, true) < 3.5) then
                    DrawText3D(Config.Locations.hero.teleporters.exit.x, Config.Locations.hero.teleporters.exit.y, Config.Locations.hero.teleporters.exit.z+0.15, '~g~E~w~ - Leave')
                    if IsControlJustReleased(0, Keys["E"]) then
                        teleportOutOfHeroLab()
                    end
                end
            end
        end
    end
end)

function teleportOutOfHeroLab()
    local entity = GetPlayerPed(-1)
    
    DoScreenFadeOut(200)
    Citizen.Wait(200)
    SetEntityCoords(entity, Config.Locations.hero.teleporters.enter.x, Config.Locations.hero.teleporters.enter.y, Config.Locations.hero.teleporters.enter.z, 0, 0, 0, false)

    PlaceObjectOnGroundProperly(entity)
    Citizen.Wait(1500)
    DoScreenFadeIn(200)
end

function teleportToHeroLab()
    local entity = GetPlayerPed(-1)
    
    DoScreenFadeOut(200)
    Citizen.Wait(200)
    SetEntityCoords(entity, Config.Locations.hero.teleporters.exit.x, Config.Locations.hero.teleporters.exit.y, Config.Locations.hero.teleporters.exit.z, 0, 0, 0, false)

    PlaceObjectOnGroundProperly(entity)
    Citizen.Wait(1500)
    DoScreenFadeIn(200)
end
