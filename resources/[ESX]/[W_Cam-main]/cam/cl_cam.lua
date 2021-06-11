ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData() 
end)

local cam = {
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {}, Title = 'Caméra LSPD'},
	Data = { currentMenu = "Caméra", GetPlayerName()},
	Events = {
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
			local btn = btn.name

			if btn == "Caméra 1" then
                TriggerEvent('cctv:camera', 1) 
				
			elseif btn == "Caméra 2" then
				TriggerEvent('cctv:camera', 2)
				
			elseif btn == "Caméra 3" then
                TriggerEvent('cctv:camera', 3) 

			elseif btn == "Caméra 4" then
                TriggerEvent('cctv:camera', 4) 
				
			elseif btn == "Caméra 5" then
                TriggerEvent('cctv:camera', 5) 

			elseif btn == "Caméra 6" then
                TriggerEvent('cctv:camera', 6) 
					
			elseif btn == "Caméra 7" then
                TriggerEvent('cctv:camera', 7) 

			elseif btn == "Caméra 8" then
                TriggerEvent('cctv:camera', 8) 
					
			elseif btn == "Caméra 9" then
                TriggerEvent('cctv:camera', 9) 

			elseif btn == "Caméra 10" then
                TriggerEvent('cctv:camera', 10) 
				
			elseif btn == "Caméra 11" then
                TriggerEvent('cctv:camera', 11) 

			elseif btn == "Caméra 12" then
                TriggerEvent('cctv:camera', 12) 

			elseif btn == "Caméra 13" then
                TriggerEvent('cctv:camera', 13) 
				
			elseif btn == "Caméra 14" then
                TriggerEvent('cctv:camera', 14) 

			elseif btn == "Caméra 15" then
                TriggerEvent('cctv:camera', 15) 
				
			elseif btn == "Caméra 16" then
                TriggerEvent('cctv:camera', 16) 

			elseif btn == "Caméra 17" then
                TriggerEvent('cctv:camera', 17) 
				
			elseif btn == "Caméra 18" then
                TriggerEvent('cctv:camera', 18) 

			elseif btn == "Caméra 19" then
                TriggerEvent('cctv:camera', 19) 
				
			elseif btn == "Caméra 20" then
                TriggerEvent('cctv:camera', 20) 
	
			elseif btn == "Caméra 21" then
                TriggerEvent('cctv:camera', 21) 
				
			elseif btn == "Caméra 22" then
                TriggerEvent('cctv:camera', 22) 
	
			elseif btn == "Caméra 23" then
                TriggerEvent('cctv:camera', 23) 
				
			elseif btn == "Caméra 24" then
                TriggerEvent('cctv:camera', 24) 

			elseif btn == "Caméra 25" then
                TriggerEvent('cctv:camera', 25) 
				
			elseif btn == "Caméra 26" then
                TriggerEvent('cctv:camera', 26) 

			elseif btn == "Caméra 27" then
                TriggerEvent('cctv:camera', 27) 
				
		end
	end,
},

	Menu = {
		["Caméra"] = {
			b = {
				{name = "Caméra 1",ask = "~r~→", askX = true, Description = 'Superette 1'},
				{name = "Caméra 2",ask = "~r~→", askX = true, Description = 'Superette 2'},
                {name = "Caméra 3",ask = "~r~→", askX = true, Description = 'Superette 3'},
				{name = "Caméra 4",ask = "~r~→", askX = true, Description = 'Superette 4'},
				{name = "Caméra 5",ask = "~r~→", askX = true, Description = 'Superette 5'},
				{name = "Caméra 6",ask = "~r~→", askX = true, Description = 'Superette 6'},
                {name = "Caméra 7",ask = "~r~→", askX = true, Description = 'Superette 7'},
				{name = "Caméra 8",ask = "~r~→", askX = true, Description = 'Superette 8'},
				{name = "Caméra 9",ask = "~r~→", askX = true, Description = 'Superette 9'},
				{name = "Caméra 10",ask = "~r~→", askX = true, Description = 'Superette 10'},
                {name = "Caméra 11",ask = "~r~→", askX = true, Description = 'Superette 11'},
				{name = "Caméra 12",ask = "~r~→", askX = true, Description = 'Superette 12'},
				{name = "Caméra 13",ask = "~r~→", askX = true, Description = 'Superette 13'},
				{name = "Caméra 14",ask = "~r~→", askX = true, Description = 'Superette 14'},
                {name = "Caméra 15",ask = "~r~→", askX = true, Description = 'Superette 15'},
				{name = "Caméra 16",ask = "~r~→", askX = true, Description = 'Superette 16'},
				{name = "Caméra 17",ask = "~r~→", askX = true, Description = 'Superette 17'},
				{name = "Caméra 18",ask = "~r~→", askX = true, Description = 'Superette 18'},
                {name = "Caméra 19",ask = "~r~→", askX = true, Description = 'Caméra Power'},
				{name = "Caméra 20",ask = "~r~→", askX = true, Description = 'Devant Prison'},
				{name = "Caméra 21",ask = "~r~→", askX = true, Description = 'Drop Prison'},
				{name = "Caméra 22",ask = "~r~→", askX = true, Description = 'Bijouterie'},
				{name = "Caméra 23",ask = "~r~→", askX = true, Description = 'Paleto Banque'},
				{name = "Caméra 24",ask = "~r~→", askX = true, Description = 'Banque Centrale'},
                {name = "Caméra 25",ask = "~r~→", askX = true, Description = 'Ballas'},
				{name = "Caméra 26",ask = "~r~→", askX = true, Description = 'Famillies'},
				{name = "Caméra 27",ask = "~r~→", askX = true, Description = 'Vagos'},
			}
		}
	
	}
}

local pos = {
	{x = 459.73 , y = -989.34, z = 24.91} 
}    

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		for k in pairs(pos) do

			local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
			local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)
			
			if dist <= 1.5 and PlayerData.job and PlayerData.job.name == 'police' then
				ESX.ShowHelpNotification("Appuyez sur ~K~ pour accéder au ~r~Caméras de la ville~s~")
				if IsControlJustPressed(1,311) then
					CreateMenu(cam)
				end
			end
		end
	end
end)