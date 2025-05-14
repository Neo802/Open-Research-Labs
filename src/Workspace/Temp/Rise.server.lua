while true do
	wait()
	if game.Workspace["MAIN.VALUES"].MELTDOWN.Value == true then
		script.Parent.Current.Value = script.Parent.Current.Value + 20 
	elseif game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value == true then
		script.Parent.Current.Value = script.Parent.Current.Value - 20 
	end
end