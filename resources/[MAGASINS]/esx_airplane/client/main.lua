ESX = nil
isInShopMenu = false
local spawnedVehicles = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while not ESX.GetPlayerData().job do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

function OpenAirplaneShop(shop)
	isInShopMenu = true

	local playerPed = PlayerPedId()
	local elements  = {}

	for k,v in ipairs(Config.Vehicles) do
		table.insert(elements, {
			label = ('%s - <span style="color:green;">$%s</span>'):format(v.label, ESX.Math.GroupDigits(v.price)),
			name  = v.label,
			model = v.model,
			price = v.price,
			props = v.props or nil
		})
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'Airplane_shop', {
		title    = _U('Airplane_shop'),
		align    = 'top-left',
		elements = elements
	}, function (data, menu)
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'Airplane_shop_confirm', {
			title    = _U('Airplane_shop_confirm', data.current.name, ESX.Math.GroupDigits(data.current.price)),
			align    = 'top-left',
			elements = {
				{label = _U('confirm_no'), value = 'no'},
				{label = _U('confirm_yes'), value = 'yes'}
		}}, function (data2, menu2)
			if data2.current.value == 'yes' then
				local plate = exports['esx_vehicleshop']:GeneratePlate()
				local vehicle = GetVehiclePedIsIn(playerPed, false)
				local props = ESX.Game.GetVehicleProperties(vehicle)
				props.plate = plate

				ESX.TriggerServerCallback('esx_Airplane:buyAirplane', function(bought)
					if bought then
						ESX.ShowNotification(_U('Airplane_shop_bought', data.current.name, ESX.Math.GroupDigits(data.current.price)))

						DeleteSpawnedVehicles()
						isInShopMenu = false
						ESX.UI.Menu.CloseAll()

						CurrentAction    = 'Airplane_shop'
						CurrentActionMsg = _U('Airplane_shop_open')

						FreezeEntityPosition(playerPed, false)
						SetEntityVisible(playerPed, true)
						SetEntityCoords(playerPed, shop.Outside.x, shop.Outside.y, shop.Outside.z)
					else
						ESX.ShowNotification(_U('Airplane_shop_nomoney'))
						menu2.close()
					end
				end, props)
			else
				menu2.close()
			end
		end, function (data2, menu2)
			menu2.close()
		end)
	end, function (data, menu)
		menu.close()
		isInShopMenu = false
		DeleteSpawnedVehicles()

		CurrentAction    = 'Airplane_shop'
		CurrentActionMsg = _U('Airplane_shop_open')

		FreezeEntityPosition(playerPed, false)
		SetEntityVisible(playerPed, true)
		SetEntityCoords(playerPed, shop.Outside.x, shop.Outside.y, shop.Outside.z)
	end, function (data, menu)
		DeleteSpawnedVehicles()

		ESX.Game.SpawnLocalVehicle(data.current.model, shop.Inside, shop.Inside.w, function (vehicle)
			table.insert(spawnedVehicles, vehicle)
			TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
			FreezeEntityPosition(vehicle, true)

			if data.current.props then
				ESX.Game.SetVehicleProperties(vehicle, data.current.props)
			end
		end)
	end)

	-- spawn first vehicle
	DeleteSpawnedVehicles()

	ESX.Game.SpawnLocalVehicle(Config.Vehicles[1].model, shop.Inside, shop.Inside.w, function (vehicle)
		table.insert(spawnedVehicles, vehicle)
		TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
		FreezeEntityPosition(vehicle, true)

		if Config.Vehicles[1].props then
			ESX.Game.SetVehicleProperties(vehicle, Config.Vehicles[1].props)
		end
	end)
end

function OpenAirplaneGarage(garage)
	ESX.TriggerServerCallback('esx_Airplane:getGarage', function (ownedAirplanes)
		if #ownedAirplanes == 0 then
			ESX.ShowNotification(_U('garage_noAirplanes'))
		else
			-- get all available Airplanes
			local elements = {}
			for i=1, #ownedAirplanes, 1 do
				ownedAirplanes[i] = json.decode(ownedAirplanes[i])

				table.insert(elements, {
					label = getVehicleLabelFromHash(ownedAirplanes[i].model),
					vehicleProps = ownedAirplanes[i]
				})
			end

			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'Airplane_garage', {
				title    = _U('garage'),
				align    = 'top-left',
				elements = elements
			}, function (data, menu)
				-- make sure the spawn point isn't blocked
				local playerPed = PlayerPedId()
				local vehicleProps = data.current.vehicleProps

				if ESX.Game.IsSpawnPointClear(garage.SpawnPoint, 4.0) then
					TriggerServerEvent('esx_Airplane:takeOutVehicle', vehicleProps.plate)
					ESX.ShowNotification(_U('garage_taken'))

					ESX.Game.SpawnVehicle(vehicleProps.model, garage.SpawnPoint, garage.SpawnPoint.w, function(vehicle)
						TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
						ESX.Game.SetVehicleProperties(vehicle, vehicleProps)
					end)

					menu.close()
				else
					ESX.ShowNotification(_U('garage_blocked'))
				end
			end, function (data, menu)
				menu.close()

				CurrentAction     = 'garage_out'
				CurrentActionMsg  = _U('garage_open')
			end)
		end
	end)
end

function OpenLicenceMenu(shop)
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'Airplane_license', {
		title    = _U('license_menu'),
		align    = 'top-left',
		elements = {
			{label = _U('license_buy_no'), value = 'no'},
			{label = _U('license_buy_yes', ESX.Math.GroupDigits(Config.LicensePrice)), value = 'yes'}
	}}, function (data, menu)
		if data.current.value == 'yes' then
			ESX.TriggerServerCallback('esx_Airplane:buyAirplaneLicense', function (boughtLicense)
				if boughtLicense then
					ESX.ShowNotification(_U('license_bought', ESX.Math.GroupDigits(Config.LicensePrice)))
					menu.close()

					OpenAirplaneShop(shop) -- parse current shop
				else
					ESX.ShowNotification(_U('license_nomoney'))
				end
			end)
		else
			CurrentAction    = 'Airplane_shop'
			CurrentActionMsg = _U('Airplane_shop_open')
			menu.close()
		end
	end, function (data, menu)
		CurrentAction    = 'Airplane_shop'
		CurrentActionMsg = _U('Airplane_shop_open')
		menu.close()
	end)
end

function StoreAirplaneInGarage(vehicle, teleportCoords)
	local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)

	ESX.TriggerServerCallback('esx_Airplane:storeVehicle', function (rowsChanged)
		if rowsChanged > 0 then
			ESX.Game.DeleteVehicle(vehicle)
			ESX.ShowNotification(_U('garage_stored'))
			local playerPed = PlayerPedId()

			ESX.Game.Teleport(playerPed, teleportCoords, function()
				SetEntityHeading(playerPed, teleportCoords.w)
			end)
		else
			ESX.ShowNotification(_U('garage_notowner'))
		end
	end, vehicleProps.plate)
end

-- Key controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if isInShopMenu then
			DisableControlAction(0, 75, true)  -- Disable exit vehicle
			DisableControlAction(27, 75, true) -- Disable exit vehicle
		else
			Citizen.Wait(500)
		end
	end
end)

function DeleteSpawnedVehicles()
	while #spawnedVehicles > 0 do
		local vehicle = spawnedVehicles[1]
		ESX.Game.DeleteVehicle(vehicle)
		table.remove(spawnedVehicles, 1)
	end
end

function getVehicleLabelFromHash(hash)
	local model = string.lower(GetDisplayNameFromVehicleModel(hash))

	for i=1, #Config.Vehicles, 1 do
		if Config.Vehicles[i].model == model then
			return Config.Vehicles[i].label
		end
	end

	return 'Unknown model [' .. model .. ']'
end
