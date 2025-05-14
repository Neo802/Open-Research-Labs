tweensize = 1

while true do
	wait()
	if game.Workspace.Coolant.Ready.Value == false then
		script.Parent.Frame.CoolFrame:TweenSize(UDim2.new(0.151, 0,-0.1, 0),"Out","Quad",tweensize)
		script.Parent.Frame.CoolStatus.BorderColor3 = Color3.new(255, 0, 0)
		script.Parent.Frame.CoolStatus.TextLabel.TextColor3 = Color3.new(255, 0, 0)
		script.Parent.Frame.CoolStatus.TextLabel.Text = "Disabled"
		else if game.Workspace.Coolant.Ready.Value == true then
		script.Parent.Frame.CoolFrame:TweenSize(UDim2.new(0.151, 0,-0.75, 0),"Out","Quad",tweensize)
		script.Parent.Frame.CoolStatus.BorderColor3 = Color3.new(0, 255, 0)
		script.Parent.Frame.CoolStatus.TextLabel.TextColor3 = Color3.new(0, 255, 0)
        script.Parent.Frame.CoolStatus.TextLabel.Text = "Activated"	
	end
	end
end