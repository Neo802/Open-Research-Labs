while true do
	wait()
	if game.Workspace.Coolant.Ready.Value == false then
		script.Parent.CoolStatus.BorderColor3 = Color3.new(255, 0, 0)
		script.Parent.CoolStatus.TextLabel.TextColor3 = Color3.new(255, 0, 0)
		script.Parent.CoolStatus.TextLabel.Text = "OFF"
		else 
		script.Parent.CoolStatus.BorderColor3 = Color3.new(0, 255, 0)
		script.Parent.CoolStatus.TextLabel.TextColor3 = Color3.new(0, 255, 0)
        script.Parent.CoolStatus.TextLabel.Text = "ON"	
    end
end