ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('buyEau')
AddEventHandler('buyEau', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceEau
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('water', 1)
end)





RegisterNetEvent('buyPain')
AddEventHandler('buyPain', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PricePain
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('bread', 1)
end)









RegisterNetEvent('buyphone')
AddEventHandler('buyphone', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Pricephone
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('phone', 1)
end)


RegisterNetEvent('buyhifi')
AddEventHandler('buyhifi', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Pricehifi
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('hifi', 1)
end)


RegisterNetEvent('buydonuts')
AddEventHandler('buydonuts', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Pricedonuts
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('donuts', 1)
end)



RegisterNetEvent('buyRadio')
AddEventHandler('buyRadio', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceRadio
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('radio', 1)
end)

