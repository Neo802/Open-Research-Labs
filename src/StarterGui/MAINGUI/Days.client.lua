while true do
	wait()
	
	if game.Workspace["MAIN.VALUES"].DAY.Value == 1 then
		script.Parent.INTRO.Frame.Time.Text = "MONDAY "..string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
		elseif game.Workspace["MAIN.VALUES"].DAY.Value == 2 then
		script.Parent.INTRO.Frame.Time.Text = "TUESDAY "..string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
		elseif game.Workspace["MAIN.VALUES"].DAY.Value == 3 then
		script.Parent.INTRO.Frame.Time.Text = "WEDNESDAY "..string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
		elseif game.Workspace["MAIN.VALUES"].DAY.Value == 4 then
		script.Parent.INTRO.Frame.Time.Text = "THURSDAY "..string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
		elseif game.Workspace["MAIN.VALUES"].DAY.Value == 5 then
		script.Parent.INTRO.Frame.Time.Text = "FRIDAY "..string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
		elseif game.Workspace["MAIN.VALUES"].DAY.Value == 6 then
		script.Parent.INTRO.Frame.Time.Text = "SATURDAY "..string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
		elseif game.Workspace["MAIN.VALUES"].DAY.Value == 7 then
		script.Parent.INTRO.Frame.Time.Text = "SUNDAY "..string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
	end
end