Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0) -- prevent crashing

		-- These natives have to be called every frame.
		SetPedDensityMultiplierThisFrame(1.0) -- set npc/ai peds density to 0
		SetRandomVehicleDensityMultiplierThisFrame(0.7) -- set random vehicles (car scenarios / cars driving off from a parking spot etc.) to 0
		SetScenarioPedDensityMultiplierThisFrame(0.5, 0.5) -- set random npc/ai peds or scenario peds to 0
		SetVehicleModelIsSuppressed(GetHashKey("rubble"), true)
        SetVehicleModelIsSuppressed(GetHashKey("taco"), true)
        SetVehicleModelIsSuppressed(GetHashKey("biff"), true)
		SetGarbageTrucks(true) -- Stop garbage trucks from randomly spawning
		SetRandomBoats(false) -- Stop random boats from spawning in the water.
		SetCreateRandomCops(false) -- disable random cops walking/driving around.
		SetCreateRandomCopsNotOnScenarios(false) -- stop random cops (not in a scenario) from spawning.
		SetCreateRandomCopsOnScenarios(false) -- stop random cops (in a scenario) from spawning.
		
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);

		-- fix OneSync NPC by Albert0
        if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then

            if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1),false),-1) == GetPlayerPed(-1) then
                SetVehicleDensityMultiplierThisFrame(0.4)
                SetParkedVehicleDensityMultiplierThisFrame(0.3)
            else
                SetVehicleDensityMultiplierThisFrame(0.3)
                SetParkedVehicleDensityMultiplierThisFrame(0.4)
            end
        else
          SetParkedVehicleDensityMultiplierThisFrame(0.3)
          SetVehicleDensityMultiplierThisFrame(0.4)
        end
	end
end)

---------------------------------
--------- ikNox#6088 ------------
---------------------------------