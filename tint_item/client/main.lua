----------------------------------------------------------------------------------------------------------------------------------
------------------------------------ BY TAT if you delete this line i will cry ---------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

function OpenTintMenu()
	local elements = {
		{ ["label"] = ('%s - <span style="color:green;">%s</span>'):format('Normal Tint ', ESX.Math.GroupDigits(Config.tintamount.normal)), ["action"] = "tint_normal" },
        { ["label"] = ('%s - <span style="color:green;">%s</span>'):format('Green Tint ', ESX.Math.GroupDigits(Config.tintamount.green)), ["action"] = "tint_Green" },
        { ["label"] = ('%s - <span style="color:green;">%s</span>'):format('Gold Tint ', ESX.Math.GroupDigits(Config.tintamount.gold)), ["action"] = "tint_Gold" },
        { ["label"] = ('%s - <span style="color:green;">%s</span>'):format('Pink Tint ', ESX.Math.GroupDigits(Config.tintamount.pink)), ["action"] = "tint_Pink" },
        { ["label"] = ('%s - <span style="color:green;">%s</span>'):format('Army Tint ', ESX.Math.GroupDigits(Config.tintamount.army)), ["action"] = "tint_Army" },
        { ["label"] = ('%s - <span style="color:green;">%s</span>'):format('Blue Tint ', ESX.Math.GroupDigits(Config.tintamount.lspd)), ["action"] = "tint_LSPD" },
        { ["label"] = ('%s - <span style="color:green;">%s</span>'):format('Orange Tint ', ESX.Math.GroupDigits(Config.tintamount.orange)), ["action"] = "tint_Orange" },
        { ["label"] = ('%s - <span style="color:green;">%s</span>'):format('Platinum Tint ', ESX.Math.GroupDigits(Config.tintamount.platinum)), ["action"] = "tint_Platinum" },
	}

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), "weapon_tint_menu",{
			title    = "Weapon Tints",
			align    = "center",
			elements = elements
	},	function(data, menu)

		local action = data.current["action"]

		if action == "tint_normal" then
			TriggerServerEvent("tat_weaponsikn:normal")
        elseif action == "tint_Green" then
			TriggerServerEvent("tat_weaponsikn:green")
        elseif action == "tint_Gold" then
			TriggerServerEvent("tat_weaponsikn:gold")
        elseif action == "tint_Pink" then
            TriggerServerEvent("tat_weaponsikn:pink")
        elseif action == "tint_Army" then
            TriggerServerEvent("tat_weaponsikn:army")
        elseif action == "tint_LSPD" then
            TriggerServerEvent("tat_weaponsikn:lspd")
        elseif action == "tint_Orange" then
            TriggerServerEvent("tat_weaponsikn:orange")
        elseif action == "tint_Platinum" then
            TriggerServerEvent("tat_weaponsikn:platinum")
		end	

	end, function(data, menu)
		menu.close()
	end)
end

RegisterNetEvent('tat_weapon:normal')
AddEventHandler('tat_weapon:normal', function()
	local player = PlayerPedId()
	local weapon = GetSelectedPedWeapon(player)
	  SetPedWeaponTintIndex(player, weapon, 0)
end)

RegisterNetEvent('tat_weapon:green')
AddEventHandler('tat_weapon:green', function()
	local player = PlayerPedId()
	local weapon = GetSelectedPedWeapon(player)
	  SetPedWeaponTintIndex(player, weapon, 1)
end)

RegisterNetEvent('tat_weapon:gold')
AddEventHandler('tat_weapon:gold', function()
	local player = PlayerPedId()
	local weapon = GetSelectedPedWeapon(player)
	  SetPedWeaponTintIndex(player, weapon, 2)
end)

RegisterNetEvent('tat_weapon:pink')
AddEventHandler('tat_weapon:pink', function()
	local player = PlayerPedId()
	local weapon = GetSelectedPedWeapon(player)
	  SetPedWeaponTintIndex(player, weapon, 3)
end)

RegisterNetEvent('tat_weapon:army')
AddEventHandler('tat_weapon:army', function()
	local player = PlayerPedId()
	local weapon = GetSelectedPedWeapon(player)
	  SetPedWeaponTintIndex(player, weapon, 4)
end)

RegisterNetEvent('tat_weapon:lspd')
AddEventHandler('tat_weapon:lspd', function()
	local player = PlayerPedId()
	local weapon = GetSelectedPedWeapon(player)
	  SetPedWeaponTintIndex(player, weapon, 5)
end)

RegisterNetEvent('tat_weapon:orange')
AddEventHandler('tat_weapon:orange', function()
	local player = PlayerPedId()
	local weapon = GetSelectedPedWeapon(player)
	  SetPedWeaponTintIndex(player, weapon, 6)
end)

RegisterNetEvent('tat_weapon:platinum')
AddEventHandler('tat_weapon:platinum', function()
	local player = PlayerPedId()
	local weapon = GetSelectedPedWeapon(player)
	  SetPedWeaponTintIndex(player, weapon, 7)
end)

local function isPlayerInRange(coords1, coords2, range)	
	return (Vdist2(coords1.x, coords1.y, coords1.z, coords2.x, coords2.y, coords2.z) < range)
end

Citizen.CreateThread(function()	
	while true do	
		Citizen.Wait(0)
		PlayerData = ESX.GetPlayerData()
		if PlayerData.job and PlayerData.job.name == Config.job then
			DrawMarker(22, Config.Shop.shopCoordinates.x, Config.Shop.shopCoordinates.y, Config.Shop.shopCoordinates.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Shop.zoneSize.x, Config.Shop.zoneSize.y, Config.Shop.zoneSize.z, Config.Shop.zoneColor.r, Config.Shop.zoneColor.g, Config.Shop.zoneColor.b, Config.Shop.zoneColor.a, false, true, 2, false, false, false, false)
			if isPlayerInRange(GetEntityCoords(PlayerPedId()), Config.Shop.shopCoordinates, Config.Shop.zoneSize.x) then
				SetTextComponentFormat('STRING')
				AddTextComponentString("Press ~INPUT_CONTEXT~ to Open Tint Shop")
				DisplayHelpTextFromStringLabel(0, 0, 1, -1)
				if IsControlJustReleased(1, 38) then
					OpenTintMenu()
				end
			end
		end
	end
end)