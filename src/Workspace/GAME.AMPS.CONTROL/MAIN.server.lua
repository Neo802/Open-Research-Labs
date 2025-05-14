debounce = false
volt = game.Workspace["MAIN.VALUES"].POWER

script.Parent.DN.CD.MouseClick:Connect(function()
	if debounce == false then
		debounce = true
		volt.Value = volt.Value - 1
		wait(1)
		debounce = false
	end
end)

script.Parent.UP.CD.MouseClick:Connect(function()
	if debounce == false then
		debounce = true
		volt.Value = volt.Value + 1
		wait(1)
		debounce = false
	end
end)

