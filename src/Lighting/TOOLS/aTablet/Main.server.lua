battery = 100
timez = 1 -- Lifetime: 500 seconds if 100%
screen = script.Parent.Screen.SurfaceGui.APPFRAME
screen.BATTERY.Text = battery.."%"
screen.BMAIN.Frame.Size = UDim2.new(battery/100,0,1,0)
equipped = false


script.Parent.Equipped:Connect(function()
	equipped = true
	while (equipped == true) do
	wait(timez)
	script.Parent.Screen.SurfaceGui.APPFRAME.CLOCK.Text = ""..string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
	battery = battery - 1
	if battery < 0 then
		battery = 0
	end
	if battery == 0 then
		script.Parent.Screen.SurfaceGui.SHUTDOWN.Visible = true
	end
	screen.BATTERY.Text = battery.."%"
	screen.BMAIN.Frame.Size = UDim2.new(battery/100,0,1,0)
	wait()
    end
end)

script.Parent.Unequipped:Connect(function()
	equipped = false
	while (equipped == false) do
	wait(timez)
	script.Parent.Screen.SurfaceGui.APPFRAME.CLOCK.Text = ""..string.sub(game.Lighting.TimeOfDay,1,#game.Lighting.TimeOfDay-3)
	battery = battery + 1
	if battery > 100 then
		battery = 100
	end
	if battery > 0 then
		script.Parent.Screen.SurfaceGui.SHUTDOWN.Visible = false
	end
	screen.BATTERY.Text = battery.."%"
	screen.BMAIN.Frame.Size = UDim2.new(battery/100,0,1,0)
	wait()
end
end)




