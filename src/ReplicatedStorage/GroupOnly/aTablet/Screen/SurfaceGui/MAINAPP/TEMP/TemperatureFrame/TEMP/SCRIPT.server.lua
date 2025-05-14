game.Workspace.Temp.HowMuch.Changed:Connect(function()
	script.Parent.Text = "("..game.Workspace.Temp.HowMuch.Value.."° C/s)"
	if game.Workspace.Temp.HowMuch.Value > 0 then
		script.Parent.Text = "(+"..game.Workspace.Temp.HowMuch.Value.."° C/s)"
	end
end)