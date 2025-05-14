while true do
	wait()
	if game.Workspace["GAME.MEGAVENTS"].MegaVent3.Activated.Value == true then
		script.Parent.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		script.Parent.O.Text = "ONLINE"
		script.Parent.O.TextColor3 = Color3.fromRGB(0, 255, 0)
		elseif game.Workspace["GAME.MEGAVENTS"].MegaVent3.Activated.Value == false then
		script.Parent.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
		script.Parent.O.Text = "OFFLINE"
		script.Parent.O.TextColor3 = Color3.fromRGB(255, 0, 0)
	end
end