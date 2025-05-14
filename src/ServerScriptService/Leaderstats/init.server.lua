local DataStoreService = game:GetService("DataStoreService")
local CashValue = DataStoreService:GetDataStore("$$Money")

game.Players.ChildAdded:connect(function(plr)
	local leaderstats = Instance.new("BoolValue")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = plr
	local cashmain = Instance.new("IntValue")
	cashmain.Name = "Money"	
	cashmain.Parent = leaderstats.Parent
	cashmain.Value = CashValue:GetAsync(plr.UserId) or 0
	
	local cash = Instance.new("StringValue")
    cash.Name = "Money"	
	cash.Parent = leaderstats
	cash.Value = cashmain.Value

	if cashmain.Value >= 1000 and cashmain.Value < 1000000 then
		cash.Value = string.sub(cashmain.Value/1000,1,#tostring(cashmain.Value)-1) .."K+"--string.sub(cashmain.Value,1,#tostring(cashmain.Value)-3).."K+"
	elseif cashmain.Value >= 1000000 and cashmain.Value < 1000000000 then
		cash.Value = string.sub(cashmain.Value/1000000,1,#tostring(cashmain.Value)-4) .."M+"--string.sub(cashmain.Value,1,#tostring(cashmain.Value)-6).."M+"
	elseif cashmain.Value >= 1000000000 then
		cash.Value = string.sub(cashmain.Value/1000000000,1,#tostring(cashmain.Value)-7) .."B+"--string.sub(cashmain.Value,1,#tostring(cashmain.Value)-9).."B+"
	elseif cashmain.Value < 1000 then
		cash.Value = cashmain.Value
	end

end)

