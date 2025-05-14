tweensize = 1

while true do
	wait()
	if game.Workspace.Coolant.Ready.Value == false then
		script.Parent.TextLabel.TextColor3 = Color3.new(255, 0, 0)
		script.Parent.TextLabel.Text = "X"
		else if game.Workspace.Coolant.Ready.Value == true then
		script.Parent.TextLabel.TextColor3 = Color3.new(0, 255, 0)
        script.Parent.TextLabel.Text = "✓"	
	end
	end
	end