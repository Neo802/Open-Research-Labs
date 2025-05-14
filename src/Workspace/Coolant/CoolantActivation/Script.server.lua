script.Parent.ClickDetector.MouseClick:connect(function(hum)
	if game.Workspace.Coolant.Active.Value == true then
	if game.Workspace.Coolant.Ready.Value == false then
	script.Parent.Sound:Play()
	script.Parent.ClickDetector.MaxActivationDistance = 0
	script.Parent.Mesh.Offset = Vector3.new(0, -0.3, 0)
    wait(0.5)
    script.Parent.Mesh.Offset = Vector3.new(0, 0, 0)
    game.Workspace["MAIN.VALUES"].COOLANTPLAYER.Value = ""
	game.Workspace.Coolant.Ready.Value = true
	wait(1) --DELAY	
	script.Parent.ClickDetector.MaxActivationDistance = 30
	else
	script.Parent.Sound:Play()
	script.Parent.ClickDetector.MaxActivationDistance = 0
	script.Parent.Mesh.Offset = Vector3.new(0, -0.3, 0)
    wait(0.5)
    script.Parent.Mesh.Offset = Vector3.new(0, 0, 0)
    print(hum.parent.Name)
    game.Workspace["MAIN.VALUES"].COOLANTPLAYER.Value = hum.Name
	game.Workspace.Coolant.Ready.Value = false
	wait(1) --DELAY
	script.Parent.ClickDetector.MaxActivationDistance = 30
	    end
	else
	
	script.Parent.Sound:Play()
	script.Parent.ClickDetector.MaxActivationDistance = 0
	script.Parent.Mesh.Offset = Vector3.new(0, -0.3, 0)
    wait(0.5)
    script.Parent.Mesh.Offset = Vector3.new(0, 0, 0)
	script.Parent.DENY:Play()
	wait(1) --DELAY
	script.Parent.ClickDetector.MaxActivationDistance = 30
		
	end
end)