local megavents = game.Workspace["GAME.MEGAVENTS"]
local timez = game.Workspace["MAIN.VALUES"].TIME.Value
while true do
	wait()
	------------------------------------------------------------------
	if megavents.MegaVent2.Activated.Value == true then
		wait(timez)
		script.Parent.Parent.Previous.Value = script.Parent.Parent.Current.Value
		game.Workspace.Temp.Current.Value = game.Workspace.Temp.Current.Value - 5
	else
		wait(timez)
		script.Parent.Parent.Previous.Value = script.Parent.Parent.Current.Value
		game.Workspace.Temp.Current.Value = game.Workspace.Temp.Current.Value + 5
	end
	------------------------------------------------------------------
end