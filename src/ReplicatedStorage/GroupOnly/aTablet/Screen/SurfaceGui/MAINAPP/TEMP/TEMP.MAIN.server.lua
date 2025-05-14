local prev = game.Workspace.Temp.Previous
local current = game.Workspace.Temp.Current
while true do
	wait()
	if prev.Value > current.Value then
		script.Parent.TemperatureFrame.TextLabel.Text = "COOLING"
		script.Parent.TemperatureFrame.TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
	elseif prev.Value == current.Value then
		script.Parent.TemperatureFrame.TextLabel.Text = "STABLE"
		script.Parent.TemperatureFrame.TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
	elseif prev.Value < current.Value then
		script.Parent.TemperatureFrame.TextLabel.Text = "RISING"
		script.Parent.TemperatureFrame.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
	end
	
end