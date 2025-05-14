
script.Parent.Laser.Value.CONFIG.ENABLED.Changed:Connect(function()
	if script.Parent.Laser.Value.CONFIG.ENABLED.Value == false then
		script.Parent.Color = Color3.fromRGB(27, 42, 53)
	else
		script.Parent.Color = Color3.fromRGB(255, 0, 0)
	end
end)