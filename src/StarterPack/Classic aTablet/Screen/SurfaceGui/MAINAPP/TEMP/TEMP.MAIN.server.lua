local max = game.Workspace.Temp.Max
while true do
	wait()
	script.Parent.TEMP.FRAME.Size = UDim2.new(1, 0, -game.Workspace.Temp.Current.Value/max.Value, 0)
    if game.Workspace.Temp.Current.Value <= 1599 then
    script.Parent.TemperatureFrame.TextLabel.Script.Disabled = false
    script.Parent.TEMP.FRAME.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    
    elseif game.Workspace.Temp.Current.Value >= 1600 and game.Workspace.Temp.Current.Value <= 2299 then
    script.Parent.TemperatureFrame.TextLabel.Script.Disabled = false
    script.Parent.TEMP.FRAME.BackgroundColor3 = Color3.fromRGB(255, 243, 66)

	elseif game.Workspace.Temp.Current.Value >= 2300 and game.Workspace.Temp.Current.Value <= 3999 then
    script.Parent.TemperatureFrame.TextLabel.Script.Disabled = false
    script.Parent.TEMP.FRAME.BackgroundColor3 = Color3.fromRGB(221, 147, 0)

	elseif game.Workspace.Temp.Current.Value >= 4000 then

    script.Parent.TEMP.FRAME.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    script.Parent.TemperatureFrame.TextLabel.Script.Disabled = true
    script.Parent.TemperatureFrame.TextLabel.Text = "ERROR"
	end
end