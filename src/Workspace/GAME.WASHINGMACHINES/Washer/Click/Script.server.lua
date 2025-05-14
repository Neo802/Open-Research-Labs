local debounce = false

script.Parent.CD.MouseClick:connect(function()
	if debounce == false then
		debounce = true
	script.Parent.CD.MaxActivationDistance = 0
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Preparing to wash..."
	wait(2)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Closing Airlock..."
	script.Parent.Parent.Airlock.Reverse.Disabled = false
	wait(3)
	--script.Parent.Parent.Airlock.Reverse.Disabled = true
	wait(3)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Flooding the washer..."
	script.Parent.Parent.Flood.Transparency = 0.7
	wait(2)
	script.Parent.Parent.Flood.Transparency = 1
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Washing Speed = 5"
	script.Parent.Parent.Motor.FrontParamB = 0.1
	wait(3)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Washing Speed = 10"
	script.Parent.Parent.Motor.FrontParamB = 0.2
	wait(3)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Washing Speed = 15"
	script.Parent.Parent.Motor.FrontParamB = 0.3
	wait(3)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Washing Speed = 20"
	script.Parent.Parent.Motor.FrontParamB = 0.5
	wait(1)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Time: 30"
	wait(30)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Decreasing speed..."
	wait(2)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Washing Speed = 20"
	script.Parent.Parent.Motor.FrontParamB = 0.5
	wait(3)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Washing Speed = 15"
	script.Parent.Parent.Motor.FrontParamB = 0.3
	wait(3)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Washing Speed = 10"
	script.Parent.Parent.Motor.FrontParamB = 0.2
	wait(3)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Washing Speed = 5"
	script.Parent.Parent.Motor.FrontParamB = 0.1
	wait(3)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Stopping the washer..."	
	script.Parent.Parent.Motor.FrontParamB = 0
	wait(2)
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Opening"
	script.Parent.Parent.Airlock.Script.Disabled = false
	wait(3)
	--script.Parent.Parent.Airlock.Script.Disabled = true
	wait(2)
	script.Parent.CD.MaxActivationDistance = 30
	script.Parent.Parent.GUI.SurfaceGui.Status.Text = "Click on the button to begin."
	debounce = false
	end
end)
