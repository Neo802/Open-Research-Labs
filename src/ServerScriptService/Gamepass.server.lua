local market = game:GetService("MarketplaceService")
local tools = game.Lighting.TOOLS

-- Type in your own gamepass ID
local Gamepasses = {
	1, -- Flashlight
	1, -- Cola
	1, -- Clipboard
	1, -- Jetpack
	1, -- aTablet Lite
	1, -- aTablet
	1, -- BoomBox Lite
	1, -- BoomBox
}

game.Players.PlayerAdded:connect(function(plr)
	plr.CharacterAdded:connect(function(char)
		if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[1]) then -- Flashlight
			print("Giving to "..plr.Name.." the Flashlight")
			local tool = tools.Flashlight:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
		if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[2]) then -- Cola
			print("Giving to "..plr.Name.." Cell Cola")
			local tool = tools.Cola:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
		if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[3]) then -- Clipboard
			print("Giving to "..plr.Name.." the Clipboard")
			local tool = tools.Clipboard:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
		if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[4]) then -- Jetpack
			print("Giving to "..plr.Name.." Jetpack")
			local tool = tools.Jetpack:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end	

		if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[5]) then -- aTablet Lite
			print("Giving to "..plr.Name.." aTablet Lite")
			local tool = tools["aTablet Lite"]:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end		

		if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[6]) then -- aTablet
			print("Giving to "..plr.Name.." aTablet")
			local tool = tools["aTablet"]:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end		

		if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[7]) then -- BoomBox Lite
			print("Giving to "..plr.Name.." BoomBox Lite")
			local tool = tools["BoomBox Lite"]:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end		

		if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[8]) then -- BoomBox
			print("Giving to "..plr.Name.." BoomBox")
			local tool = tools["BoomBox"]:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end	
	end)
end)

game.ReplicatedStorage.Give.OnServerEvent:Connect(function(plr, p, item)
	print(item)
	if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[item]) and item == 1 then -- Flashlight
		if plr:WaitForChild("Backpack"):FindFirstChild("Flashlight") == nil and plr.Character:FindFirstChild("Flashlight") == nil then
			print("Giving to "..plr.Name.." the Flashlight")
			local tool = tools.Flashlight:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
	end	
	if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[item]) and item == 2 then -- Cola
		if plr:WaitForChild("Backpack"):FindFirstChild("Cola") == nil and plr.Character:FindFirstChild("Cola") == nil then
			print("Giving to "..plr.Name.." Cell Cola")
			local tool = tools.Cola:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
	end	
	if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[item]) and item == 3 then -- Clipboard
		if plr:WaitForChild("Backpack"):FindFirstChild("Clipboard") == nil and plr.Character:FindFirstChild("Clipboard") == nil then
			print("Giving to "..plr.Name.." the Clipboard")
			local tool = tools.Clipboard:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
	end	
	if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[item]) and item == 4 then -- Jetpack
		if plr:WaitForChild("Backpack"):FindFirstChild("Jetpack") == nil and plr.Character:FindFirstChild("Jetpack") == nil then
			print("Giving to "..plr.Name.." Jetpack")
			local tool = tools.Jetpack:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
	end	

	if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[item]) and item == 5 then -- aTablet Lite
		if plr:WaitForChild("Backpack"):FindFirstChild("aTablet Lite") == nil and plr.Character:FindFirstChild("aTablet Lite") == nil then
			print("Giving to "..plr.Name.." aTablet Lite")
			local tool = tools["aTablet Lite"]:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
	end		

	if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[item]) and item == 6 then -- aTablet
		if plr:WaitForChild("Backpack"):FindFirstChild("aTablet") == nil and plr.Character:FindFirstChild("aTablet") == nil then
			print("Giving to "..plr.Name.." aTablet")
			local tool = tools["aTablet"]:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
	end		

	if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[item]) and item == 7 then -- BoomBox LITE
		if plr:WaitForChild("Backpack"):FindFirstChild("BoomBox Lite") == nil and plr.Character:FindFirstChild("BoomBox Lite") == nil then
			print("Giving to "..plr.Name.." BoomBox Lite")
			local tool = tools["BoomBox Lite"]:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
	end		

	if market:UserOwnsGamePassAsync(plr.UserId,Gamepasses[item]) and item == 8 then -- BoomBox
		if plr:WaitForChild("Backpack"):FindFirstChild("BoomBox") == nil and plr.Character:FindFirstChild("BoomBox") == nil then
			print("Giving to "..plr.Name.." BoomBox")
			local tool = tools["BoomBox"]:Clone()
			tool.Parent = plr:WaitForChild("Backpack")
		end
	end										
end)