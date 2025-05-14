function timezz()
	script.Parent.LIVE.TextLabel.Text = string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
end

while true do
	wait()
	timezz()
end