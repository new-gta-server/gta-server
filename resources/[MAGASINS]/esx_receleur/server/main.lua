ESX               = nil
local ItemsLabels = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('onMySQLReady', function()

	MySQL.Async.fetchAll(
		'SELECT * FROM items',
		{},
		function(result)

			for i=1, #result, 1 do
				ItemsLabels[result[i].name] = result[i].label
			end--

		end
	)

end)

ESX.RegisterServerCallback('esx_receleur:requestDBItems', function(source, cb)

	MySQL.Async.fetchAll(
		'SELECT * FROM receleur',
		{},
		function(result)

			local receleurItems  = {}

			for i=1, #result, 1 do

				if receleurItems[result[i].name] == nil then
					receleurItems[result[i].name] = {}
				end

				table.insert(receleurItems[result[i].name], {
					name  = result[i].item,
					price = result[i].price,
					label = ItemsLabels[result[i].item]
				})

			end

			cb(receleurItems)

		end
	)

end)

RegisterServerEvent('esx_receleur:buyItem')
AddEventHandler('esx_receleur:buyItem', function(itemName, price)

	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)

	if xPlayer.get('money') >= price then

		xPlayer.removeMoney(price)
		xPlayer.addInventoryItem(itemName, 1)

		TriggerClientEvent('esx:showNotification', _source, _U('bought') .. ItemsLabels[itemName])

	else
		TriggerClientEvent('esx:showNotification', _source, _U('not_enough'))
	end

end)
