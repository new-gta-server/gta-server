RegisterServerEvent("k8:SendLanguage")
AddEventHandler("k8:SendLanguage", function()
    local s = source
    TriggerClientEvent("k8:UpdateLanguage", s, k8Config.Languages[k8Config.LanguageChoice])
end)

RegisterServerEvent("k8:RequestOpenMenu")
AddEventHandler("k8:RequestOpenMenu", function()
    local src = source
    if k8Config.OpenMenuIdentifierRestriction then
        local foundIdentifier = false
        for a = 1, #k8Config.LicenseIdentifiers do
            if not foundIdentifier then
                if GetPlayerId('license', src) == k8Config.LicenseIdentifiers[a] then
                    foundIdentifier = true
                end
            end
        end
        for b = 1, #k8Config.SteamIdentifiers do
            if not foundIdentifier then
                if GetPlayerId('steam', src) == k8Config.SteamIdentifiers[b] then
                    foundIdentifier = true
                end
            end
        end
        if foundIdentifier then
            TriggerClientEvent("k8:OpenMenu", src, k8Config.OpenMenuPedRestriction, k8Config.PedsList)
            return
        else
            TriggerClientEvent("k8:IdentifierRestricted", src)
        end
    else
        TriggerClientEvent("k8:OpenMenu", src, k8Config.OpenMenuPedRestriction, k8Config.PedsList)
    end
end)

RegisterServerEvent("k8:RequestVehicleToggle")
AddEventHandler("k8:RequestVehicleToggle", function()
    local src = source
    print("Requested Vehicle Toggle")
    TriggerClientEvent("k8:ToggleVehicle", src, k8Config.VehicleRestriction, k8Config.VehiclesList)
end)

RegisterServerEvent("k8:RequestItems")
AddEventHandler("k8:RequestItems", function()
    print("Requested Items")
    local src = source
    TriggerClientEvent("k8:SearchVehicle", src, k8Config.Items, k8Config.OpenDoorsOnSearch)
end)

--[[ Functions ]]--
function GetPlayerId(type, id)
    local identifiers = GetPlayerIdentifiers(id)
    for i = 1, #identifiers do
        if string.find(identifiers[i], type, 1) ~= nil then
            return identifiers[i]
        end
    end
    return false
end