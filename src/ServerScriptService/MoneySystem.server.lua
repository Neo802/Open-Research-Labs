local DataStoreService = game:GetService("DataStoreService")
local CashValue = DataStoreService:GetDataStore("$$Money")

--game.ReplicatedStorage.Money.OnServerEvent:connect(function(plr, v, val, text)
function GiveMoney(plr, val, text)
	local stats = plr.leaderstats
	local textt = text or "playing"
	stats.Parent.Money.Value = stats.Parent.Money.Value + val
	game.ReplicatedStorage.Notification:FireClient(plr, "Money", "You have just received "..val.." money for "..textt..".", 4)

	if stats.Parent.Money.Value >= 1000 and stats.Parent.Money.Value < 1000000 then
		stats.Money.Value = string.sub(stats.Parent.Money.Value/1000,1,#tostring(stats.Parent.Money.Value)-1) .."K+"--string.sub(stats.Parent.Money.Value,1,#tostring(stats.Parent.Money.Value)-3).."K+"
	elseif stats.Parent.Money.Value >= 1000000 and stats.Parent.Money.Value < 1000000000 then
		stats.Money.Value = string.sub(stats.Parent.Money.Value/1000000,1,#tostring(stats.Parent.Money.Value)-4) .."M+"--string.sub(stats.Parent.Money.Value,1,#tostring(stats.Parent.Money.Value)-6).."M+"
	elseif stats.Parent.Money.Value >= 1000000000 then
		stats.Money.Value = string.sub(stats.Parent.Money.Value/1000000000,1,#tostring(stats.Parent.Money.Value)-7) .."B+"--string.sub(stats.Parent.Money.Value,1,#tostring(stats.Parent.Money.Value)-9).."B+"
	elseif stats.Parent.Money.Value < 1000 then
		stats.Money.Value = stats.Parent.Money.Value
	end
	
	CashValue:SetAsync(plr.UserId, stats.Parent.Money.Value)
end

game.Players.PlayerAdded:Connect(function(plr)
	
	while plr do
		wait(600)
		GiveMoney(plr, 5, "playing")
	end
end)