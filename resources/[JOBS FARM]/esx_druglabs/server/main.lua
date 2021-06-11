
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_druglabs:server:hasWeedKey', function(source, cb)
    local sourcePlayer = ESX.GetPlayerFromId(source)

    if sourcePlayer.getInventoryItem('weedkey').count > 0 then
        cb(true)
    else
        cb(false)
    end
end)

ESX.RegisterServerCallback('esx_druglabs:server:hasMethKey', function(source, cb)
    local sourcePlayer = ESX.GetPlayerFromId(source)

    if sourcePlayer.getInventoryItem('methkey').count > 0 then
        cb(true)
    else
        cb(false)
    end
end)

ESX.RegisterServerCallback('esx_druglabs:server:hasCokeKey', function(source, cb)
    local sourcePlayer = ESX.GetPlayerFromId(source)

    if sourcePlayer.getInventoryItem('cokekey').count > 0 then
        cb(true)
    else
        cb(false)
    end
end)

ESX.RegisterServerCallback('esx_druglabs:server:hasLSDKey', function(source, cb)
    local sourcePlayer = ESX.GetPlayerFromId(source)

    if sourcePlayer.getInventoryItem('lsdkey').count > 0 then
        cb(true)
    else
        cb(false)
    end
end)

ESX.RegisterServerCallback('esx_druglabs:server:hasHeroKey', function(source, cb)
    local sourcePlayer = ESX.GetPlayerFromId(source)

    if sourcePlayer.getInventoryItem('Heroinekey').count > 0 then
        cb(true)
    else
        cb(false)
    end
end)

ESX.RegisterServerCallback('esx_druglabs:server:hasBlanchisseurKey', function(source, cb)
    local sourcePlayer = ESX.GetPlayerFromId(source)

    if sourcePlayer.getInventoryItem('Blanchisseurkey').count > 0 then
        cb(true)
    else
        cb(false)
    end
end)



