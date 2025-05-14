script.Parent.ClickDetector.MouseClick:connect(function(hum)
	if script.Parent.Parent.Active.Value == false then
		script.Parent.Parent.Active.Value = true
	script.Parent.ClickDetector.MaxActivationDistance = 0
	for i=1,30 do
	script.Parent.CFrame = script.Parent.CFrame * CFrame.fromEulerAnglesXYZ(0,0.1,0)
	wait(0.03)
	end
	game.Workspace["MAIN.VALUES"].COOLANTGENPLAYER.Value = hum.Name
	script.Parent.Start:Play()
	for i=1,30 do
		script.Parent.Parent.Water.Size = script.Parent.Parent.Water.Size + Vector3.new(0.6,0,0)
	    wait(0.03)
	end
	for i=1,30 do
		script.Parent.Parent.Water2.Size = script.Parent.Parent.Water2.Size + Vector3.new(0.6,0,0)
	    wait(0.03)
	end
	for i=1,30 do
		script.Parent.Parent.Water3.Size = script.Parent.Parent.Water3.Size + Vector3.new(0.6,0,0)
	    wait(0.03)
	end
	for i=1,30 do
		script.Parent.Parent.Water4.Size = script.Parent.Parent.Water4.Size + Vector3.new(0.6,0,0)
	    wait(0.03)
	end
	script.Parent.Start:Stop()
	script.Parent.Running:Play()
	script.Parent.ClickDetector.MaxActivationDistance = 30
	--script.Parent.Parent.CoolantActivation.ClickDetector.MaxActivationDistance = 30
	else
		script.Parent.Parent.Active.Value = false
		
	script.Parent.ClickDetector.MaxActivationDistance = 0
	for i=1,30 do
	script.Parent.CFrame = script.Parent.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.1,0)
	wait(0.03)
	end
	script.Parent.Running:Stop()
	script.Parent.Shutdown:Play()
	game.Workspace["MAIN.VALUES"].COOLANTGENPLAYER.Value = ""
	--script.Parent.Parent.CoolantActivation.ClickDetector.MaxActivationDistance = 0
    script.Parent.Parent.Ready.Value = false	
	for i=1,30 do
		script.Parent.Parent.Water.Size = script.Parent.Parent.Water.Size - Vector3.new(0.6,0,0)
	    wait(0.03)
	end
	for i=1,30 do
		script.Parent.Parent.Water2.Size = script.Parent.Parent.Water2.Size - Vector3.new(0.6,0,0)
	    wait(0.03)
	end
	for i=1,30 do
		script.Parent.Parent.Water3.Size = script.Parent.Parent.Water3.Size - Vector3.new(0.6,0,0)
	    wait(0.03)
	end
	for i=1,30 do
		script.Parent.Parent.Water4.Size = script.Parent.Parent.Water4.Size - Vector3.new(0.6,0,0)
	    wait(0.03)
	end
	
	script.Parent.Shutdown:Stop()
	script.Parent.ClickDetector.MaxActivationDistance = 30
	
	end
end)