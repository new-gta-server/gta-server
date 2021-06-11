
ESX                = nil
local PlayersTransforming, PlayersSelling, PlayersHarvesting = {}, {}, {}
local ketchup = 1

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'cluckinbell', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'cluckinbell', _U('cluckinbell_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'cluckinbell', 'cluckinbell', 'society_cluckinbell', 'society_cluckinbell', 'society_cluckinbell', {type = 'private'})

RegisterServerEvent('esx_cluckinbell:annonce')
AddEventHandler('esx_cluckinbell:annonce', function(result)
  local _source  = source
  local xPlayer  = ESX.GetPlayerFromId(_source)
  local xPlayers = ESX.GetPlayers()
  local text     = result
  print(text)
  for i=1, #xPlayers, 1 do
    local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
    TriggerClientEvent('esx_cluckinbell:annonce', xPlayers[i],text)
  end

  Wait(8000)

  local xPlayers = ESX.GetPlayers()
  for i=1, #xPlayers, 1 do
    local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
    TriggerClientEvent('esx_cluckinbell:annoncestop', xPlayers[i])
  end

end)


RegisterServerEvent('esx_cluckinbell:getStockItem')
AddEventHandler('esx_cluckinbell:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_cluckinbell', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_cluckinbell:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_cluckinbell', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_cluckinbell:putStockItems')
AddEventHandler('esx_cluckinbell:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_cluckinbell', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)

RegisterServerEvent('esx_cluckinbell:getFridgeStockItem')
AddEventHandler('esx_cluckinbell:getFridgeStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_cluckinbell_fridge', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_cluckinbell:getFridgeStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_cluckinbell_fridge', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_cluckinbell:putFridgeStockItems')
AddEventHandler('esx_cluckinbell:putFridgeStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_cluckinbell_fridge', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)


RegisterServerEvent('esx_cluckinbell:buyItem')
AddEventHandler('esx_cluckinbell:buyItem', function(itemName, price, itemLabel)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local limit = xPlayer.getInventoryItem(itemName).limit
    local qtty = xPlayer.getInventoryItem(itemName).count
    local societyAccount = nil

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_cluckinbell', function(account)
        societyAccount = account
      end)
    
    if societyAccount ~= nil and societyAccount.money >= price then
        if qtty < limit then
            societyAccount.removeMoney(price)
            xPlayer.addInventoryItem(itemName, 1)
            TriggerClientEvent('esx:showNotification', _source, _U('bought') .. itemLabel)
        else
            TriggerClientEvent('esx:showNotification', _source, _U('max_item'))
        end
    else
        TriggerClientEvent('esx:showNotification', _source, _U('not_enough_fric'))
    end

end)


RegisterServerEvent('esx_cluckinbell:ingredientgBurger')
AddEventHandler('esx_cluckinbell:ingredientgBurger', function(itemValue)

    local _source = source
    local _itemValue = itemValue
    TriggerClientEvent('esx:showNotification', _source, _U('assembling_ingredient'))

 if _itemValue == 'cuttomate' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('tomater').count

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('tomater') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('term_miss'))
                    xPlayer.removeInventoryItem('tomater', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('tomatec') .. _U(' term') .. ' ~w~!')
                    xPlayer.removeInventoryItem('tomater', 1)
                    xPlayer.addInventoryItem('tomatec', 5)
                end
            end

        end)
    end

     if _itemValue == 'lavesalade' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('salads').count

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('salads') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('term_miss'))
                    xPlayer.removeInventoryItem('salads', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('saladp') .. _U(' term') .. ' ~w~!')
                    xPlayer.removeInventoryItem('salads', 1)
                    xPlayer.addInventoryItem('saladp', 5)
                end
            end

        end)
    end

         if _itemValue == 'cuirepoulet' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('pouletc').count

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('pouletc') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('term_miss'))
                    xPlayer.removeInventoryItem('pouletc', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('pouletcui') .. _U(' term') .. ' ~w~!')
                    xPlayer.removeInventoryItem('pouletc', 1)
                    xPlayer.addInventoryItem('pouletcui', 1)
                end
            end

        end)
    end

             if _itemValue == 'friteuse' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('patate').count

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('patate') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('term_miss'))
                    xPlayer.removeInventoryItem('patate', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('patatefrie') .. _U(' term') .. ' ~w~!')
                    xPlayer.removeInventoryItem('patate', 1)
                    xPlayer.addInventoryItem('patatefrie', 1)
                end
            end

        end)
    end

end)

RegisterServerEvent('esx_cluckinbell:craftingBurger')
AddEventHandler('esx_cluckinbell:craftingBurger', function(itemValue)

    local _source = source
    local _itemValue = itemValue
    TriggerClientEvent('esx:showNotification', _source, _U('assembling_burger'))

 if _itemValue == 'tender' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('bread').count
            local bethQuantity      = xPlayer.getInventoryItem('fromage').count
            local gimelQuantity     = xPlayer.getInventoryItem('tomatec').count
            local daletQuantity     = xPlayer.getInventoryItem('saladp').count
            local gameQuantity     = xPlayer.getInventoryItem('pouletcui').count 

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('bread') .. '~w~')
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('fromage') .. '~w~')
            elseif gimelQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('tomatec') .. '~w~')
            elseif daletQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('saladp') .. '~w~')
            elseif gameQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('pouletcui') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('bread', 2)
                    xPlayer.removeInventoryItem('fromage', 2)
                    xPlayer.removeInventoryItem('tomatec', 2)
                    xPlayer.removeInventoryItem('saladp', 2)
                    xPlayer.removeInventoryItem('pouletcui', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('tender') .. _U(' craft') .. ' ~w~!')
                    xPlayer.removeInventoryItem('bread', 2)
                    xPlayer.removeInventoryItem('fromage', 2)
                    xPlayer.removeInventoryItem('tomatec', 2)
                    xPlayer.removeInventoryItem('saladp', 2)
                    xPlayer.removeInventoryItem('pouletcui', 1)
                    xPlayer.addInventoryItem('tender', 1)
                end
            end

        end)
    end

     if _itemValue == 'fritesba' then
        SetTimeout(10000, function()        

            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('patatefrie').count 

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('patatefrie') .. '~w~')
            else
                local chanceToMiss = math.random(100)
                if chanceToMiss <= Config.MissCraft then
                    TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
                    xPlayer.removeInventoryItem('patatefrie', 1)
                else
                    TriggerClientEvent('esx:showNotification', _source, _U('frites') .. _U(' craft') .. ' ~w~!')
                    xPlayer.removeInventoryItem('patatefrie', 1)
                    xPlayer.addInventoryItem('frites', 1)
                end
            end

        end)
    end

end)




ESX.RegisterServerCallback('esx_cluckinbell:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)

ESX.RegisterUsableItem('tender', function(source)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('tender', 1)

TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
TriggerClientEvent('esx_basicneeds:onEat', source)
TriggerClientEvent('esx:showNotification', source, _U('used_tender'))
end)

ESX.RegisterUsableItem('frites', function(source)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('frites', 1)

TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
TriggerClientEvent('esx_basicneeds:onEat', source)
TriggerClientEvent('esx:showNotification', source, _U('used_frites'))
end)

ESX.RegisterUsableItem('soda', function(source)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('soda', 1)

TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
TriggerClientEvent('esx_basicneeds:onDrink', source)
TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
end)

ESX.RegisterUsableItem('icetea', function(source)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('icetea', 1)

TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
TriggerClientEvent('esx_basicneeds:onDrink', source)
TriggerClientEvent('esx:showNotification', source, _U('used_icetea'))
end)

ESX.RegisterUsableItem('jusfruit', function(source)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('jusfruit', 1)

TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
TriggerClientEvent('esx_basicneeds:onDrink', source)
TriggerClientEvent('esx:showNotification', source, _U('used_jusfruit'))
end)

ESX.RegisterUsableItem('limonade', function(source)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('limonade', 1)

TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
TriggerClientEvent('esx_basicneeds:onDrink', source)
TriggerClientEvent('esx:showNotification', source, _U('used_limonade'))
end)

ESX.RegisterUsableItem('drpepper', function(source)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('drpepper', 1)

TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
TriggerClientEvent('esx_basicneeds:onDrink', source)
TriggerClientEvent('esx:showNotification', source, _U('used_drpepper'))
end)

ESX.RegisterUsableItem('energy', function(source)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('energy', 1)

TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
TriggerClientEvent('esx_basicneeds:onDrink', source)
TriggerClientEvent('esx:showNotification', source, _U('used_energy'))
end)
