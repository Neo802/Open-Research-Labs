while true do
	wait()
	if game:GetService("Lighting"):GetMinutesAfterMidnight() == 00 * 60 then
		game.Workspace["MAIN.VALUES"].DAY.Value = game.Workspace["MAIN.VALUES"].DAY.Value + 1
		wait(1)
	end
	
	if game.Workspace["MAIN.VALUES"].DAY.Value > 7 then
		game.Workspace["MAIN.VALUES"].DAY.Value = 1
	end
end

