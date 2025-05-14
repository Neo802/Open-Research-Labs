game.Workspace:WaitForChild("GENERATORS").GENERATORS.GEN1.ACTIVE.Changed:Connect(function()
	local active = game.Workspace.GENERATORS.GENERATORS.GEN1.ACTIVE.Value
	if active == true then
		script.Parent.MP.Light.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
		script.Parent.MP.Light.TL.Text = "ONLINE"
	elseif active == false then
		script.Parent.MP.Light.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
		script.Parent.MP.Light.TL.Text = "OFFLINE"
	end
end)

game.Workspace:WaitForChild("GENERATORS").GENERATORS.GEN2.ACTIVE.Changed:Connect(function()
	local active = game.Workspace.GENERATORS.GENERATORS.GEN2.ACTIVE.Value
	if active == true then
		script.Parent.MP.Light1.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
		script.Parent.MP.Light1.TL.Text = "ONLINE"
	elseif active == false then
		script.Parent.MP.Light1.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
		script.Parent.MP.Light1.TL.Text = "OFFLINE"
	end
end)

game.Workspace:WaitForChild("GENERATORS").GENERATORS.GEN3.ACTIVE.Changed:Connect(function()
	local active = game.Workspace.GENERATORS.GENERATORS.GEN3.ACTIVE.Value
	if active == true then
		script.Parent.MP.Light2.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
		script.Parent.MP.Light2.TL.Text = "ONLINE"
	elseif active == false then
		script.Parent.MP.Light2.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
		script.Parent.MP.Light2.TL.Text = "OFFLINE"
	end
end)

game.Workspace["MAIN.VALUES"].GENERATOR.ACTIVATED.Changed:connect(function()
	local active = game.Workspace["MAIN.VALUES"].GENERATOR.ACTIVATED.Value
	
	if active == true then
		script.Parent.Startup.MAIN.Text = "ONLINE"
		script.Parent.BOTTOM.Text = "GENERATORS ARE TURNED ON"
	elseif active == false then
		script.Parent.Startup.MAIN.Text = "OFFLINE"
		script.Parent.BOTTOM.Text = "GENERATORS ARE TURNED OFF"
	end
	
	if active == true and game.Workspace["MAIN.VALUES"].GENERATOR.EPOWER.Value == true then
		script.Parent.EPOWER.Status.Text = "ON"
		script.Parent.EPOWER.Status.TextColor3 = Color3.fromRGB(85, 255, 0)
	else
		script.Parent.EPOWER.Status.Text = "OFF"
		script.Parent.EPOWER.Status.TextColor3 = Color3.fromRGB(255, 0, 0)
	end
	
	
end)

game.Workspace["MAIN.VALUES"].GENERATOR.EPOWER.Changed:connect(function()
	local active = game.Workspace["MAIN.VALUES"].GENERATOR.EPOWER.Value
	local active2 = game.Workspace["MAIN.VALUES"].GENERATOR.ACTIVATED.Value
	
	if active == true and active2 == true then
		script.Parent.EPOWER.Status.Text = "ON"
		script.Parent.EPOWER.Status.TextColor3 = Color3.fromRGB(85, 255, 0)
	else
		script.Parent.EPOWER.Status.Text = "OFF"
		script.Parent.EPOWER.Status.TextColor3 = Color3.fromRGB(255, 0, 0)
	end
end)