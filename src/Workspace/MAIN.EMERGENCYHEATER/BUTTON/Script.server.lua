local act = false
local activated = false
local emerg = false
OK = nil
TYPE = nil
PLACE = nil

script.Parent.ClickDetector.MouseClick:connect(function(plr)
	print(plr.Name)
	if activated == false then
		activated = true	
		script.Parent.Sound:Play()
		script.Parent.ClickDetector.MaxActivationDistance = 0
		script.Parent.Mesh.Offset = Vector3.new(-0.3, 0, 0)
		wait(0.5)
		script.Parent.Mesh.Offset = Vector3.new(0, 0, 0)

		if game.Workspace["MAIN.VALUES"].ALREADYEMH.Value == false then
			---------------------------- GO -----------------------------------
			game.Workspace.Countdown.SurfaceGui.Frame.EM.Time.Match.Disabled = true
			game.Workspace.Countdown.SurfaceGui.Frame.EM.Time.Text = "SAFE"
			game.ServerScriptService.Gate.Explosion.Disabled = true
			--game.ServerScriptService.Gate.Countdown.Disabled = true
			--game.ServerScriptService.Gate.Start.Disabled = true
			game.ServerScriptService.Gate.Disabled = true
			--game.Workspace["MAIN.VALUES"].MELTDOWN.Value = false
			game.Workspace["MAIN.VALUES"].COUNTDOWN.Value = false	
			game.Workspace["MAIN.VALUES"].EMERGENCYHEATER.Value = true
			game.Workspace["MAIN.VALUES"].ALREADYEMH.Value = true
			game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.CountdownTheme:Stop()
			game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.SoundBackground:Stop()
			game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.ActivationSong:Play()
			game.Workspace["MAIN.VALUES"].ACTIVATOR.Value = plr.Name
			game.ReplicatedStorage.Badge:Fire(plr.Name,"eh")
			game.ReplicatedStorage.EmergencyHeaterACT:FireAllClients(plr.Name)
			---------------------------- END ----------------------------------
			wait(1) --DELAY	
			--script.Parent.ClickDetector.MaxActivationDistance = 30
		else
			if script.Parent.DENY.Playing == false then
				script.Parent.DENY:Play()
			end
		end
	end
end)

game.ReplicatedStorage.HeatingProcess.OnServerEvent:connect(function()
	script.Parent.Parent.GUI.SurfaceGui.MAIN.ONE.GO:TweenSize(UDim2.new(1, 0, 0, 0),"Out","Quad",20)
	wait(1)
	script.Parent.Parent.GUI.SurfaceGui.MAIN.TWO.GO:TweenSize(UDim2.new(1, 0, 0, 0),"Out","Quad",20)	
	wait(1)
	script.Parent.Parent.GUI.SurfaceGui.MAIN.THREE.GO:TweenSize(UDim2.new(1, 0, 0, 0),"Out","Quad",20)	
end)

game.ReplicatedStorage.EmergencyTemp.OnServerEvent:Connect(function()
	if emerg == false then
		emerg = true
		for i = -3600,0,100 do
			game.Workspace.Temp.Current.Value = i
			wait(1)
		end
	end
end)

game.ReplicatedStorage.EmergencyHeaterAPI.OnServerEvent:connect(function(plr,val)
	print(val)
	if act == false then -- TO PREVENT SPAM
		act = true
		if val == "true" then

			game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value = false
			game.Workspace.Temp.Current.Value = -3600
			script.Parent.Parent.GUI.SurfaceGui.MAIN.ACTIVE.Visible = true
			game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.ActivationSong:Stop()
			game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.SuccessfullyOST:Play()
			wait(103)
			--local players = game.Players:GetChildren()
			--game.ReplicatedStorage.NanobotsACTIVE:FireAllClients()
			game.ReplicatedStorage.RemoteEvents.NanobotsNew:Fire()

		--[[while true do
	        wait(.1)
            for _,v in pairs(game.Players:GetPlayers()) do
	           v:Kick("Thank you for playing Aperture Labs")
            end
        end	]]
		elseif val == "false" then
			pcall(function()
				local coolantgenplr = game.Workspace["MAIN.VALUES"].COOLANTGENPLAYER.Value

				if coolantgenplr ~= nil then
					game.ReplicatedStorage.Badge:Fire(coolantgenplr,"coolantplr")
				end

			end)
			game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.ActivationSong:Stop()  
			--game.ServerScriptService.Gate.EMCountdown.Disabled = false 
			--script.Parent.Parent.GUI.SurfaceGui.MAIN.Visible = false
			game.ServerScriptService.Gate.Disabled = false
			game.Workspace["MAIN.VALUES"].EMERGENCYCOUNTDOWN.Value = true

			script.Parent.Parent.GUI.SurfaceGui.MAIN.ACTIVE.Visible = true
			script.Parent.Parent.GUI.SurfaceGui.BSOD.Visible = true 
			game.Workspace.Countdown.SurfaceGui.Frame.EM.Time.Match.Disabled = false
			script.Disabled = true
		end
	end
end)