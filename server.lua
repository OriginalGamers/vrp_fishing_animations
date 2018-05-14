local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","fishing")

RegisterServerEvent('fishing:item')
AddEventHandler('fishing:item', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local cops = vRP.getUsersByGroup({"Fisher"})
	local randomBreak = math.random(1,20)
	if vRP.hasGroup({user_id,"Fisher"}) then
		if not vRP.tryGetInventoryItem({user_id,"fishing_pole",1}) then
			TriggerClientEvent('cancel', player)
			vRPclient.notify(player,{"~r~You need a fishing pole from the store."})
		else
			TriggerClientEvent('hasFishingPole', player)
			if randomBreak ~= 3 then
				vRP.giveInventoryItem({user_id,"fishing_pole",1})
			else
				vRPclient.notify(player,{"~r~Your Fishing Pole Has Broken."})
			end
		end
	else
		vRPclient.notify(player,{"~r~You are not a fisherman!"})
	end
end)

RegisterServerEvent('fishing:reward')
AddEventHandler('fishing:reward', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local randomFish = math.random(1,5)
	if randomFish == 2 or randomFish == 4 then
		vRP.giveInventoryItem({user_id,"bass",1})
	else
		vRP.giveInventoryItem({user_id,"catfish",1})
	end
end)


