local playersProcessingCocaLeaf = {}
local playersProcessingCuttedCoke = {}
local playersProcessingCokeBag = {}

RegisterServerEvent('esx_illegal:pickedUpCocaLeaf')
AddEventHandler('esx_illegal:pickedUpCocaLeaf', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('coca_leaf')

	if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
		TriggerClientEvent('esx:showNotification', _source, _U('coca_leaf_inventoryfull'))
	else
		xPlayer.addInventoryItem(xItem.name, 1)
	end
end)

RegisterServerEvent('esx_illegal:processCocaLeaf')
AddEventHandler('esx_illegal:processCocaLeaf', function()
	if not playersProcessingCocaLeaf[source] then
		local _source = source

		playersProcessingCocaLeaf[_source] = ESX.SetTimeout(Config.Delays.CokeProcessing, function()
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xCocaLeaf, xCoke = xPlayer.getInventoryItem('coca_leaf'), xPlayer.getInventoryItem('coke')

			if xCoke.limit ~= -1 and (xCoke.count + 1) > xCoke.limit then
				TriggerClientEvent('esx:showNotification', _source, _U('coke_processingfull'))
			elseif xCocaLeaf.count < 3 then
				TriggerClientEvent('esx:showNotification', _source, _U('coke_processingenough'))
			else
				xPlayer.removeInventoryItem('coca_leaf', 3)
				xPlayer.addInventoryItem('coke', 1)

				TriggerClientEvent('esx:showNotification', _source, _U('coke_processed'))
			end

			playersProcessingCocaLeaf[_source] = nil
		end)
	else
		print(('esx_illegal: %s attempted to exploit coke processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

RegisterServerEvent('esx_illegal:processCuttedCoke')
AddEventHandler('esx_illegal:processCuttedCoke', function()
	if not  playersProcessingCuttedCoke[source] then
		local _source = source

		 playersProcessingCuttedCoke[_source] = ESX.SetTimeout(Config.Delays.CokeCutting, function()
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xCoke, xCuttedCoke = xPlayer.getInventoryItem('coke'), xPlayer.getInventoryItem('cutted_coke')

			if xCuttedCoke.limit ~= -1 and (xCuttedCoke.count + 1) > xCuttedCoke.limit then
				TriggerClientEvent('esx:showNotification', _source, _U('cutted_coke_processingfull'))
			elseif xCoke.count < 1 then
				TriggerClientEvent('esx:showNotification', _source, _U('cutted_coke_processingenough'))
			else
				xPlayer.removeInventoryItem('coke', 1)
				xPlayer.addInventoryItem('cutted_coke', 2)

				TriggerClientEvent('esx:showNotification', _source, _U('cutting_coke_processed'))
			end

			 playersProcessingCuttedCoke[_source] = nil
		end)
	else
		print(('esx_illegal: %s attempted to exploit cutted_coke processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

RegisterServerEvent('esx_illegal:processCokeBag')
AddEventHandler('esx_illegal:processCokeBag', function()
	if not playersProcessingCokeBag[source] then
		local _source = source

		playersProcessingCokeBag[_source] = ESX.SetTimeout(Config.Delays.CokeBagProcessing, function()
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xCuttedCoke, xCokeBag = xPlayer.getInventoryItem('cutted_coke'), xPlayer.getInventoryItem('cokebag')

			if xCokeBag.limit ~= -1 and (xCokeBag.count + 1) > xCokeBag.limit then
				TriggerClientEvent('esx:showNotification', _source, _U('CokeBag_processingfull'))
			elseif xCokeBag.count < 1 then
				TriggerClientEvent('esx:showNotification', _source, _U('CokeBag_processingenough'))
			else
				xPlayer.removeInventoryItem('cutted_coke', 2)
				xPlayer.addInventoryItem('CokeBag', 1)

				TriggerClientEvent('esx:showNotification', _source, _U('CokeBag_processed'))
			end

			playersProcessingCokeBag[_source] = nil
		end)
	else
		print(('esx_illegal: %s attempted to exploit CokeBag processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

function CancelProcessing(playerID)
	if playersProcessingCocaLeaf[playerID] then
		ESX.ClearTimeout(playersProcessingCocaLeaf[playerID])
		playersProcessingCocaLeaf[playerID] = nil
	end
end

RegisterServerEvent('esx_illegal:cancelProcessing')
AddEventHandler('esx_illegal:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('esx:playerDropped', function(playerID, reason)
	CancelProcessing(playerID)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessing(source)
end)
