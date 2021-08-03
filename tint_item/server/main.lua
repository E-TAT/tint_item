  
----------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------- BY TAT ------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("tat_weaponsikn:normal")
AddEventHandler("tat_weaponsikn:normal", function()
    local item1 = 'tint-normal'
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item1, 1)
    xPlayer.removeAccountMoney('bank', Config.tintamount.normal)
    TriggerClientEvent('esx:showNotification', xPlayer.source,'You Have Been Charged For Skin, $' .. Config.tintamount.normal)
end)

RegisterServerEvent("tat_weaponsikn:green")
AddEventHandler("tat_weaponsikn:green", function()
    local item2 = 'tint-green'
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item2, 1)
    xPlayer.removeAccountMoney('bank', Config.tintamount.green)
        TriggerClientEvent('esx:showNotification', xPlayer.source,'You Have Been Charged For Skin, $' .. Config.tintamount.green)
end)

RegisterServerEvent("tat_weaponsikn:gold")
AddEventHandler("tat_weaponsikn:gold", function()
    local item3 = 'tint-gold'
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item3, 1)
    xPlayer.removeAccountMoney('bank', Config.tintamount.gold)
        TriggerClientEvent('esx:showNotification', xPlayer.source,'You Have Been Charged For Skin, $' .. Config.tintamount.gold)
end)

RegisterServerEvent("tat_weaponsikn:pink")
AddEventHandler("tat_weaponsikn:pink", function()
    local item4 = 'tint-pink'
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item4, 1)
    xPlayer.removeAccountMoney('bank', Config.tintamount.pink)
        TriggerClientEvent('esx:showNotification', xPlayer.source,'You Have Been Charged For Skin, $' .. Config.tintamount.pink)
end)

RegisterServerEvent("tat_weaponsikn:army")
AddEventHandler("tat_weaponsikn:army", function()
    local item5 = 'tint-army'
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item5, 1)
    xPlayer.removeAccountMoney('bank', Config.tintamount.army)
        TriggerClientEvent('esx:showNotification', xPlayer.source,'You Have Been Charged For Skin, $' .. Config.tintamount.army)
end)

RegisterServerEvent("tat_weaponsikn:lspd")
AddEventHandler("tat_weaponsikn:lspd", function()
    local item6 = 'tint-lspd'
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item6, 1)
    xPlayer.removeAccountMoney('bank', Config.tintamount.lspd)
        TriggerClientEvent('esx:showNotification', xPlayer.source,'You Have Been Charged For Skin, $' .. Config.tintamount.lspd)
end)

RegisterServerEvent("tat_weaponsikn:orange")
AddEventHandler("tat_weaponsikn:orange", function()
    local item7 = 'tint-orange'
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item7, 1)
    xPlayer.removeAccountMoney('bank', Config.tintamount.orange)
        TriggerClientEvent('esx:showNotification', xPlayer.source,'You Have Been Charged For Skin, $' .. Config.tintamount.orange)
end)

RegisterServerEvent("tat_weaponsikn:platinum")
AddEventHandler("tat_weaponsikn:platinum", function()
    local item8 = 'tint-platinum'
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item8, 1)
    xPlayer.removeAccountMoney('bank', Config.tintamount.platinum)
        TriggerClientEvent('esx:showNotification', xPlayer.source,'You Have Been Charged For Skin, $' .. Config.tintamount.platinum)
end)

----------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------- USEABLE ITEM ----------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------


ESX.RegisterUsableItem('tint-normal', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('tint-normal', 1)
    TriggerClientEvent('esx:showNotification', xPlayer.source,'Skin equipped!')
    TriggerClientEvent('tat_weapon:normal', source);
end)

ESX.RegisterUsableItem('tint-green', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('tint-green', 1)
    TriggerClientEvent('esx:showNotification', xPlayer.source,'Skin equipped!')
    TriggerClientEvent('tat_weapon:green', source);
end)

ESX.RegisterUsableItem('tint-gold', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('tint-gold', 1)
    TriggerClientEvent('esx:showNotification', xPlayer.source,'Skin equipped!')
    TriggerClientEvent('tat_weapon:gold', source);
end)

ESX.RegisterUsableItem('tint-pink', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('tint-pink', 1)
    TriggerClientEvent('esx:showNotification', xPlayer.source,'Skin equipped!')
    TriggerClientEvent('tat_weapon:pink', source);
end)

ESX.RegisterUsableItem('tint-army', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('tint-army', 1)
    TriggerClientEvent('esx:showNotification', xPlayer.source,'Skin equipped!')
    TriggerClientEvent('tat_weapon:army', source);
end)

ESX.RegisterUsableItem('tint-lspd', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('tint-lspd', 1)
    TriggerClientEvent('esx:showNotification', xPlayer.source,'Skin equipped!')
    TriggerClientEvent('tat_weapon:lspd', source);
end)

ESX.RegisterUsableItem('tint-orange', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('tint-orange', 1)
    TriggerClientEvent('esx:showNotification', xPlayer.source,'Skin equipped!')
    TriggerClientEvent('tat_weapon:orange', source);
end)

ESX.RegisterUsableItem('tint-platinum', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('tint-platinum', 1)
    TriggerClientEvent('esx:showNotification', xPlayer.source,'Skin equipped!')
    TriggerClientEvent('tat_weapon:platinum', source);
end)
