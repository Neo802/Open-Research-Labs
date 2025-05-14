game.ReplicatedStorage.GetItem.OnServerEvent:Connect(function(plr,val,valz)
	if valz == 1 then
		local item = "Cola"
		if plr.Money.Value >= 10 then
			if plr.Backpack:FindFirstChild(item) == nil then
				local x = game.Lighting.TOOLS[item]:clone()
				x.Parent = plr.Backpack
			end
		end
	elseif valz == 2 then
		local item = "Clipboard"
		if plr.Money.Value >= 50 then
			if plr.Backpack:FindFirstChild(item) == nil then
				local x = game.Lighting.TOOLS[item]:clone()
				x.Parent = plr.Backpack
			end
		end
	elseif valz == 3 then
		local item = "Flashlight"
		if plr.Money.Value >= 100 then
			if plr.Backpack:FindFirstChild(item) == nil then
				local x = game.Lighting.TOOLS[item]:clone()
				x.Parent = plr.Backpack
			end
		end
	elseif valz == 4 then
		local item = "SpeedCoil"
		if plr.Money.Value >= 500 then
			if plr.Backpack:FindFirstChild(item) == nil then
				local x = game.Lighting.TOOLS[item]:clone()
				x.Parent = plr.Backpack
			end
		end
	elseif valz == 5 then
		local item = "GravityCoil"
		if plr.Money.Value >= 500 then
			if plr.Backpack:FindFirstChild(item) == nil then
				local x = game.Lighting.TOOLS[item]:clone()
				x.Parent = plr.Backpack
			end
		end
	elseif valz == 6 then
		local item = "BoomBox Lite"
		if plr.Money.Value >= 1000 then
			if plr.Backpack:FindFirstChild(item) == nil then
				local x = game.Lighting.TOOLS[item]:clone()
				x.Parent = plr.Backpack
			end
		end
	end
end)