local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('moment:enerjikaldir', function()
	local Player = QBCore.Functions.GetPlayer(source)

	if not Player then return end

	Player.Functions.RemoveItem('enerji_icecegi', 1)
end)

QBCore.Functions.CreateUseableItem('enerji_icecegi', function(source, item)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.GetItemByName(item.name) ~= nil then
		TriggerClientEvent('moment:enerji', source, 200, "enerji", "enerji_icecegi")
	end
end)