script.Parent.Text = game.Workspace["MAIN.VALUES"].CORECODE.Value

game.Workspace["MAIN.VALUES"].CORECODE.Changed:connect(function()
	script.Parent.Text = tostring(game.Workspace["MAIN.VALUES"].CORECODE.Value)
end)