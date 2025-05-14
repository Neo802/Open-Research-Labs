donates = script.Parent.Frame.CASH
plr = game.Players.LocalPlayer

--[[for i,v in pairs(script.Parent.Frame.CASH:GetChildren()) do
	if v:IsA("TextButton") then
      id = v.DevId.Value
		v.MouseButton1Click:connect(function()
			    local plrid = game.Players[plr.Name].UserId
				game:GetService("MarketplaceService"):PromptProductPurchase(plr,id)
	            game.ReplicatedStorage.BuyCash:FireServer(plr,id)
		end)
	end
end]]

function donate(id)
				game:GetService("MarketplaceService"):PromptProductPurchase(plr,id)
	            game.ReplicatedStorage.BuyCash:FireServer(plr,id)
	
end

donates.Donate1.MouseButton1Click:connect(function() donate(donates.Donate1.DevId.Value) end)
donates.Donate2.MouseButton1Click:connect(function() donate(donates.Donate2.DevId.Value) end)