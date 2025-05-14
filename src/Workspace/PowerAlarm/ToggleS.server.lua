game.Workspace["MAIN.VALUES"].POWER.Changed:connect(function()
	if game.Workspace["MAIN.VALUES"].POWER.Value == 8 then
		script.Parent.Toggle.Value = true
	else
		script.Parent.Toggle.Value = false
	end
end)