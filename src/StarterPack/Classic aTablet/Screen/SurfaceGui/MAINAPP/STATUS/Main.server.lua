

while true do
	wait()
	if game.Workspace.Temp.Current.Value <= 1599 then
    script.Parent.Warning.Visible = false
    ----------------------------------------
    script.Parent.StatusText.Text = "STABLE"
    script.Parent.StatusText.BorderColor3 = Color3.new(0, 255, 0)
    script.Parent.StatusText.TextColor3 = Color3.new(0, 255, 0)
    ----------------------------------------
    script.Parent.StatusText2.Text = "Excellent status"
    script.Parent.StatusText2.TextColor3 = Color3.new(0, 255, 0)

    ----------------------------------------
    elseif game.Workspace.Temp.Current.Value >= 1600 and game.Workspace.Temp.Current.Value <= 2999 then
	script.Parent.Warning.Visible = false			
	----------------------------------------
    script.Parent.StatusText.Text = "CRITICAL"
    script.Parent.StatusText.BorderColor3 = Color3.new(255, 255, 0)
    script.Parent.StatusText.TextColor3 = Color3.new(255, 255, 0)
    ----------------------------------------
    script.Parent.StatusText2.Text = "Temperature is reaching safe limit"
    script.Parent.StatusText2.TextColor3 = Color3.new(255, 255, 0)
    ----------------------------------------
    ----------------------------------------
	elseif game.Workspace.Temp.Current.Value >= 3000 and game.Workspace.Temp.Current.Value <= 3999 then
	script.Parent.Warning.Visible = true	
	----------------------------------------
    script.Parent.StatusText.Text = "OVERHEATING"
    script.Parent.StatusText.BorderColor3 = Color3.new(255, 0, 0)
    script.Parent.StatusText.TextColor3 = Color3.new(255, 0, 0)
    ----------------------------------------
    script.Parent.StatusText2.Text = "Warning: Temperature exceeded safe levels"
    script.Parent.StatusText2.TextColor3 = Color3.new(255, 0, 0)
    ----------------------------------------
    ----------------------------------------
	elseif game.Workspace.Temp.Current.Value >= 4000 then
		script.Parent.Warning.Visible = true	
		----------------------------------------
    script.Parent.StatusText.Text = "MELTDOWN"
    script.Parent.StatusText.BorderColor3 = Color3.new(255, 0, 0)
    script.Parent.StatusText.TextColor3 = Color3.new(255, 0, 0)
    ----------------------------------------
    script.Parent.StatusText2.Text = "DANGER! Evacuate the facility now!"
    script.Parent.StatusText2.TextColor3 = Color3.new(255, 0, 0)
    ----------------------------------------
    ----------------------------------------
	end
end