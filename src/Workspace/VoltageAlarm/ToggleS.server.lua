game.Workspace["MAIN.VALUES"].VOLTAGE.Changed:connect(function()
	if game.Workspace["MAIN.VALUES"].VOLTAGE.Value == 8 then
		script.Parent.Toggle.Value = true
	else
		script.Parent.Toggle.Value = false
	end
end)