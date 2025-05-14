local DataStoreService = game:GetService("DataStoreService")
local CashValue = DataStoreService:GetDataStore("$$Money")
--------------------------------------------------------------
local FastIntro = DataStoreService:GetDataStore("$$FastIntro")
local Debug = DataStoreService:GetDataStore("$$Debug")
local DoNoDist = DataStoreService:GetDataStore("$$DoNoDist")
--------------------------------------------------------------
local LowGPU = DataStoreService:GetDataStore("$$LowGPU")
--------------------------------------------------------------
local DisAnn = DataStoreService:GetDataStore("$$DisAnn")
local Mute = DataStoreService:GetDataStore("$$Mute")


game.ReplicatedStorage.Database.OnServerEvent:connect(function(plr, val, types, item)
	item = item or nil
	val = val or false
	types = types or nil
	print("Value: ",val," Item: ",types)
	if types == "reset" then
		local stats = plr.leaderstats
		stats.Parent.Money.Value = 0
		stats.Money.Value = stats.Parent.Money.Value

		CashValue:SetAsync(plr.UserId, stats.Parent.Money.Value)
		--------------------------------------------------------
		FastIntro:SetAsync(plr.UserId, false)
		Debug:SetAsync(plr.UserId, false)
		DoNoDist:SetAsync(plr.UserId, false)
		--------------------------------------------------------
		LowGPU:SetAsync(plr.UserId, false)
		--------------------------------------------------------
		DisAnn:SetAsync(plr.UserId, false)
		Mute:SetAsync(plr.UserId, false)
		--------------------------------------------------------
	elseif types == "FastIntro" then
		plr.PlayerGui.MAINGUI.VALUES.General.FastIntro.Value = val
		FastIntro:SetAsync(plr.UserId, val)
	elseif types == "Debug" then
		plr.PlayerGui.MAINGUI.VALUES.General.Debug.Value = val
		Debug:SetAsync(plr.UserId, val)
	elseif types == "DoNoDist" then
		plr.PlayerGui.MAINGUI.VALUES.General.DoNoDist.Value = val
		DoNoDist:SetAsync(plr.UserId, val)
		--------------------------------------------------------
	elseif types == "LowGPU" then
		plr.PlayerGui.MAINGUI.VALUES.Graphics.LowGPU.Value = val
		LowGPU:SetAsync(plr.UserId, val)
		--------------------------------------------------------
	elseif types == "DisAnn" then
		plr.PlayerGui.MAINGUI.VALUES.Sounds.DisAnn.Value = val
		DisAnn:SetAsync(plr.UserId, val)
	elseif types == "Mute" then
		plr.PlayerGui.MAINGUI.VALUES.Sounds.Mute.Value = val
		Mute:SetAsync(plr.UserId, val)
	end
end)

game.Players.PlayerAdded:Connect(function(plr)
	local ui = plr.PlayerGui:WaitForChild("MAINGUI")
	---------------------------------------------------------------------------
	ui.VALUES.General.FastIntro.Value = FastIntro:GetAsync(plr.UserId) or false
	ui.VALUES.General.Debug.Value = Debug:GetAsync(plr.UserId) or false
	ui.VALUES.General.DoNoDist.Value = DoNoDist:GetAsync(plr.UserId) or false
	---------------------------------------------------------------------------
	ui.VALUES.Graphics.LowGPU.Value = LowGPU:GetAsync(plr.UserId) or false
	---------------------------------------------------------------------------
	ui.VALUES.Sounds.DisAnn.Value = DisAnn:GetAsync(plr.UserId) or false
	ui.VALUES.Sounds.Mute.Value = Mute:GetAsync(plr.UserId) or false
	---------------------------------------------------------------------------
end)
