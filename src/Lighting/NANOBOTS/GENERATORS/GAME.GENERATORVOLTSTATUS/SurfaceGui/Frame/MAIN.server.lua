game.Workspace.GENERATORS.GENERATORS.GEN1.ACTIVE.Changed:Connect(function()
	local active = game.Workspace.GENERATORS.GENERATORS.GEN1.ACTIVE.Value
	if active == true then
		script.Parent.Power:TweenSize(UDim2.new(0.21, 0,-0.74, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,20)
	elseif active == false then
		script.Parent.Power:TweenSize(UDim2.new(0.21, 0, 0, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,20)
	end
end)

game.Workspace.GENERATORS.GENERATORS.GEN2.ACTIVE.Changed:Connect(function()
	local active = game.Workspace.GENERATORS.GENERATORS.GEN2.ACTIVE.Value
	if active == true then
		script.Parent.Power1:TweenSize(UDim2.new(0.21, 0,-0.74, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,20)
	elseif active == false then
		script.Parent.Power1:TweenSize(UDim2.new(0.21, 0, 0, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,20)
	end
end)

game.Workspace.GENERATORS.GENERATORS.GEN3.ACTIVE.Changed:Connect(function()
	local active = game.Workspace.GENERATORS.GENERATORS.GEN3.ACTIVE.Value
	if active == true then
		script.Parent.Power2:TweenSize(UDim2.new(0.21, 0,-0.74, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,20)
	elseif active == false then
		script.Parent.Power2:TweenSize(UDim2.new(0.21, 0, 0, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,20)
	end
end)