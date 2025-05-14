while true do
	wait()
	if game.Workspace["GAME.MEGAVENTS"].MegaVent2.Activated.Value == true then
		script.Parent.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		elseif game.Workspace["GAME.MEGAVENTS"].MegaVent2.Activated.Value == false then
		script.Parent.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
	end
end