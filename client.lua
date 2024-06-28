
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('moment:enerji')
AddEventHandler('moment:enerji', function(sayi, type, item1, item2)
	if not bussy then
		bussy = true
		local playerPed = PlayerPedId()
		TriggerServerEvent("moment:enerjikaldir")
		if type == "enerji" then
			QBCore.Functions.Progressbar('use_enerjiicecegi', 'Enerji içeceği içiyorsun...', 2000, false, true, {
				disableMovement = false,
				disableCarMovement = false,
				disableMouse = false,
				disableCombat = true,
		  }, {
			animDict = "amb@world_human_drinking@beer@male@idle_a",
			anim = "idle_c",
			flags = 49,
	  }, {}, {}, function() -- Done

			local remaininTime = 60
			while remaininTime > 0 do
				Citizen.Wait(500)
				RestorePlayerStamina(PlayerId(), 1.0)
				remaininTime = remaininTime - 1
			end
		  end)
		end
	end
end)
