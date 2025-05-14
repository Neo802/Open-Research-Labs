MarketplaceService = game:GetService("MarketplaceService")
local Pass1, Pass2, Pass3, Pass4, Pass5, Pass6, Pass7 = 1, 2, 3, 4, 5, 6, 7
local PurchaseHistory = game:GetService("DataStoreService"):GetDataStore("PurchaseHistory")
local DataStoreService = game:GetService("DataStoreService")
local CashValue = DataStoreService:GetDataStore("$$Money")

game.ReplicatedStorage.BuyCash.OnServerEvent:connect(function(plr,id)
	MarketplaceService.ProcessReceipt = function(receiptInfo)

		local player = game:GetService("Players"):GetPlayerByUserId(receiptInfo.PlayerId)
		if not player then
			return Enum.ProductPurchaseDecision.NotProcessedYet 		
		end
		local cash = game.Players[plr.Name].Money
		local cashm = game.Players[plr.Name].leaderstats.Money      

		if receiptInfo.ProductId == Pass1 then
			cash.Value = cash.Value + 100
			CashValue:SetAsync(plr.UserId, cash.Value)
			game.ReplicatedStorage.Notification:FireClient(plr, "Buying System", "Thank you for purchasing 100 money.", 4)
		elseif receiptInfo.ProductId == Pass2 then
			cash.Value = cash.Value + 250
			CashValue:SetAsync(plr.UserId, cash.Value)
			game.ReplicatedStorage.Notification:FireClient(plr, "Buying System", "Thank you for purchasing 250 money.", 4)
		elseif receiptInfo.ProductId == Pass3 then
			cash.Value = cash.Value + 550
			CashValue:SetAsync(plr.UserId, cash.Value)
			game.ReplicatedStorage.Notification:FireClient(plr, "Buying System", "Thank you for purchasing 550 money.", 4)
		elseif receiptInfo.ProductId == Pass4 then
			cash.Value = cash.Value + 1250
			CashValue:SetAsync(plr.UserId, cash.Value)
			game.ReplicatedStorage.Notification:FireClient(plr, "Buying System", "Thank you for purchasing 1250 money.", 4)
		elseif receiptInfo.ProductId == Pass5 then
			cash.Value = cash.Value + 2600
			CashValue:SetAsync(plr.UserId, cash.Value)
			game.ReplicatedStorage.Notification:FireClient(plr, "Buying System", "Thank you for purchasing 2600 money.", 4)
		elseif receiptInfo.ProductId == Pass6 then
			game.ReplicatedStorage.Notification:FireAllClients("Meltdown", "Incoming meltdown!", 4,true)
			wait(5)
			game.Workspace.Temp.Current.Value = 4000
		elseif receiptInfo.ProductId == Pass7 then
			game.ReplicatedStorage.Notification:FireAllClients("Freezedown", "Incoming freezedown!", 4,true)
			wait(5)
			game.Workspace.Temp.Current.Value = -4000
		end

		if cash.Value >= 1000 and cash.Value < 1000000 then
			cashm.Value = string.sub(cash.Value/1000,1,#tostring(cash.Value)-1) .."K+"--string.sub(cash.Value,1,#tostring(cash.Value)-3).."K+"
		elseif cash.Value >= 1000000 and cash.Value < 1000000000 then
			cashm.Value = string.sub(cash.Value/1000000,1,#tostring(cash.Value)-4) .."M+"--string.sub(cash.Value,1,#tostring(cash.Value)-6).."M+"
		elseif cash.Value >= 1000000000 then
			cashm.Value = string.sub(cash.Value/1000000000,1,#tostring(cash.Value)-7) .."B+"--string.sub(cash.Value,1,#tostring(cash.Value)-9).."B+"
		elseif cash.Value < 1000 then
			cashm.Value = cash.Value
		end

		return Enum.ProductPurchaseDecision.PurchaseGranted		
	end
end)