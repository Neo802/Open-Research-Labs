local LSW = game.Workspace["GAME.LIGHTS"]:GetChildren()
MUSIC = game.Workspace["MAIN.SOUNDS"].MELTDOWN
MUSIC2 = game.Workspace["MAIN.SOUNDS"].FREEZEDOWN
MAINCONFIGS = game.Workspace["MAIN.VALUES"]
NOTIFICATION = game.ReplicatedStorage.Notification
LOCKDOWNCHILD = game.Workspace["GAME.LOCKDOWNS"]:GetChildren()
spawns = game.Workspace["GAME.SPAWNS"]:GetChildren()
meltspawns = game.Workspace["GAME.MELTSPAWNS"]:GetChildren()
-------------------------------------------------------------------------
function ambient(val)
	LSW = game.Workspace["GAME.LIGHTS"]:GetChildren()
	if val == "dark" then
		game.Lighting.Ambient = Color3.new(-0.1, -0.1, -0.1)
		game.Lighting.OutdoorAmbient = Color3.new(-0.1, -0.1, -0.1)
		for i=0x1,#LSW do
			if LSW[i]:FindFirstChild("Wire") then
				LSW[i]:FindFirstChild("Wire").SpotLight.Enabled = false
				LSW[i]:FindFirstChild("Wire").BrickColor = BrickColor.new("Black")
				LSW[i]:FindFirstChild("Wire").Material = "Neon"		
				if LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light") then
					LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light").Light.Visible = false
				end
			end
			if LSW[i]:FindFirstChild("SpotLight") then
				LSW[i].SpotLight.Enabled = false
				LSW[i].BrickColor = BrickColor.new("Black")
				LSW[i].Material = "Neon"	
			end	
			if 	LSW[i]:FindFirstChild("PointLight") then
				LSW[i].PointLight.Enabled = false
				LSW[i].BrickColor = BrickColor.new("Black")
				LSW[i].Material = "Neon"
			end
		end

	elseif val == "ice" then
		game.Lighting.Ambient = Color3.fromRGB(91, 146, 158)
		game.Lighting.OutdoorAmbient = Color3.new(-0.1, -0.1, -0.1)

	elseif val == "normal" then
		game.Lighting.Ambient = Color3.fromRGB(98, 98, 98)
		game.Lighting.OutdoorAmbient = Color3.fromRGB(88, 88, 88)
		for i=0x1,#LSW do
			if LSW[i]:FindFirstChild("Wire") then
				LSW[i]:FindFirstChild("Wire").SpotLight.Enabled = true
				LSW[i]:FindFirstChild("Wire").BrickColor = BrickColor.new("White")
				LSW[i]:FindFirstChild("Wire").Material = "Neon"		
				if LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light") then
					LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light").Light.Visible = true
				end
			end
			if LSW[i]:FindFirstChild("SpotLight") then
				LSW[i].SpotLight.Enabled = true
				LSW[i].BrickColor = BrickColor.new("White")
				LSW[i].Material = "Neon"	
			end	
			if 	LSW[i]:FindFirstChild("PointLight") then
				LSW[i].PointLight.Enabled = true
				LSW[i].BrickColor = BrickColor.new("White")
				LSW[i].Material = "Neon"
			end
		end


	elseif val == "emergencypower" then
		--game.Lighting.Ambient = Color3.fromRGB(98, 98, 98)
		--game.Lighting.OutdoorAmbient = Color3.fromRGB(88, 88, 88)
		for i=0x1,#LSW do
			if LSW[i]:FindFirstChild("Wire") then
				LSW[i]:FindFirstChild("Wire").SpotLight.Enabled = true
				LSW[i]:FindFirstChild("Wire").BrickColor = BrickColor.new("Deep orange")
				LSW[i]:FindFirstChild("Wire").SpotLight.Color = Color3.new(255, 176, 0)
				LSW[i]:FindFirstChild("Wire").Material = "Neon"		
				if LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light") then
					LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light").Light.Visible = true
					LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light").Light.ImageColor3 = Color3.new(255, 176, 0)
				end
			end
			if LSW[i]:FindFirstChild("SpotLight") then
				LSW[i].SpotLight.Enabled = true
				LSW[i].BrickColor = BrickColor.new("Deep orange")
				LSW[i]:FindFirstChild("SpotLight").Color = Color3.new(255, 176, 0)
				LSW[i].Material = "Neon"	
			end	
			if 	LSW[i]:FindFirstChild("PointLight") then
				LSW[i].PointLight.Enabled = true
				LSW[i].BrickColor = BrickColor.new("Deep orange")
				LSW[i]:FindFirstChild("PointLight").Color = Color3.new(255, 176, 0)
				LSW[i].Material = "Neon"
			end
		end

	end
end

-------------------------------------------------------------------------
function functionnuke()
	MUSIC = game.Workspace["MAIN.SOUNDS"].MELTDOWN
	MAINCONFIGS = game.Workspace["MAIN.VALUES"]
	----------------------------------------------------
	--script.Parent.Countdown.Disabled = true
	MAINCONFIGS.COUNTDOWN.Value = false
	MAINCONFIGS.EMERGENCYCOUNTDOWN.Value = false
	MAINCONFIGS.EXPLODED.Value = true
	MUSIC.NuclearBackground:Play()
	MUSIC.BackgroundTheme:Stop()
	MUSIC.ScaryNoise:Stop()
	MUSIC.CountdownTheme:Stop()
	MUSIC.EmergencyCoolantOST:Stop()
	wait(1)
	MUSIC.Noise4:Play()
	wait(3)
	MUSIC.Noise9:Play()
	wait(2.28)
	MUSIC.Noise10:Play()
	game.Workspace.SBSun.Move.Disabled = false
	wait(120)
	MAINCONFIGS.MELTS.Value = MAINCONFIGS.MELTS.Value + 1
	--local PLAYERS = game.Players:GetChildren()
	game.ReplicatedStorage.RemoteEvents.NanobotsNew:Fire()
	--game.ReplicatedStorage.NanobotsACTIVE:FireAllClients()

	--script.Parent.Nanobots.Disabled = false
--[[while true do
	wait(.1)
for _,v in pairs(game.Players:GetPlayers()) do
	v:Kick("Thank you for playing Aperture Labs")
end
end]]

end
-------------------------------------------------------------------------
function functionbh()
	MUSIC = game.Workspace["MAIN.SOUNDS"].MELTDOWN
	MAINCONFIGS = game.Workspace["MAIN.VALUES"]

	----------------------------------------------------
	--script.Parent.Countdown.Disabled = true
	MAINCONFIGS.COUNTDOWN.Value = false
	MAINCONFIGS.EXPLODED.Value = true
	MUSIC2.NuclearBackground:Play()
	MUSIC2.BackgroundTheme:Stop()
	MUSIC2.ScaryNoise:Stop()
	MUSIC2.CountdownTheme:Stop()
	MUSIC2.EmergencyCoolantOST:Stop()
	wait(1)
	MUSIC2.Noise4:Play()
	wait(3)
	MUSIC2.Noise9:Play()
	wait(2.28)
	--MUSIC.Noise10:Play()
	game.Workspace.SBBlackHole.BH2.Move.Disabled = false
	game.Workspace.SBBlackHole.BH2.Kill.Disabled = false
	wait(120)
	MAINCONFIGS.FREEZEDOWNS.Value = MAINCONFIGS.FREEZEDOWNS.Value + 1
	--local PLAYERS = game.Players:GetChildren()
	--game.ReplicatedStorage.NanobotsACTIVE:FireAllClients()
	game.ReplicatedStorage.RemoteEvents.NanobotsNew:Fire()
	--script.Parent.Nanobots.Disabled = false
--[[while true do
	wait(.1)
for _,v in pairs(game.Players:GetPlayers()) do
	v:Kick("Thank you for playing Aperture Labs")
end
end]]

end
-------------------------------------------------------------------------
function functioncountdown(val)
	if val == "melt" then
		local Countdown = 120
		local EVACTOOL = game.Workspace["MELT.EVACVENT"].VENT:GetChildren()
		local megafanchild = game.Workspace.MegaFan.FanMain:GetChildren()
		local meltdowndebris = game.Workspace["MELTDOWN.PARTS"]:GetChildren()
		local Count = Countdown
		MAINCONFIGS.COUNTDOWN.Value = true
		game.Workspace.SBChemical.Move.Disabled = false
		wait(1)
		MUSIC.BackgroundTheme:Stop()
		MUSIC.CountdownTheme:Play()
		game.Workspace.MegaFan.Script.Disabled = true
		game.Workspace.Countdown.SurfaceGui.Frame.EM.Time.Match.Disabled = false

		for i=0x1,#megafanchild do
			megafanchild[i].Anchored = false
		end

		for i=0x1,#meltdowndebris do
			meltdowndebris[i].Script.Disabled = false
		end
		game.Workspace.Countvalue.Value = Countdown
		while true do
			wait()
			if Countdown == 0 then
				Countdown = Count
			else --" "..Countdown.." Seconds "--
				wait(1)
				Countdown = Countdown - 1
				print(game.Workspace.Countvalue.Value)
				game.Workspace.Countvalue.Value =  Countdown
				if Countdown == 100 then
					script.Red.Disabled = false
					for i=0x1,#EVACTOOL do
						EVACTOOL[i].Transparency = 1
						EVACTOOL[i].CanCollide = false
					end
					for i=0x1,#spawns do
						spawns[i].Enabled = false
					end
					for i=0x1,#meltspawns do
						meltspawns[i].Enabled = true
					end
				elseif Countdown == 90 then
					if game.Workspace["MAIN.VALUES"].ALREADYEM.Value == false then
						if game.Workspace["MAIN.EMERGENCYCOOLANT"]:FindFirstChild("Part") then
							game.Workspace["MAIN.EMERGENCYCOOLANT"].Part:remove()
						end
						game.Workspace["MAIN.EMERGENCYCOOLANT"].BUTTON.ClickDetector.MaxActivationDistance = 30
						game.Workspace["MAIN.EMERGENCYCOOLANT"].BUTTON.Script.Disabled = false
					end
				elseif Countdown == 20 then
					if game.Workspace["MAIN.VALUES"].ALREADYEM.Value == false then
						game.Workspace["MAIN.EMERGENCYCOOLANT"].BUTTON.Script.Disabled = true	
						game.Workspace["MAIN.EMERGENCYCOOLANT"].BUTTON.ClickDetector.MaxActivationDistance = 0
					end
				elseif Countdown == 1 then
					--script.Parent.Voice.Disabled = false
					functionnuke()
					return 0;
				end
			end
		end

	elseif val == "freeze" then
		local Countdown = 120
		local EVACTOOL = game.Workspace["MELT.EVACVENT"].VENT:GetChildren()
		local megafanchild = game.Workspace.MegaFan.FanMain:GetChildren()
		local meltdowndebris = game.Workspace["MELTDOWN.PARTS"]:GetChildren()
		local Count = Countdown
		MAINCONFIGS.COUNTDOWN.Value = true
		game.Workspace.SBIce.Move.Disabled = false
		wait(1)
		MUSIC2.BackgroundTheme:Stop()
		MUSIC2.CountdownTheme:Play()
		game.Workspace.MegaFan.Script.Disabled = true
		game.Workspace.Countdown.SurfaceGui.Frame.EM.Time.Match.Disabled = false

		for i=0x1,#megafanchild do
			megafanchild[i].Anchored = false
		end

--[[for i=0x1,#meltdowndebris do
	meltdowndebris[i].Script.Disabled = false
end]]
		game.Workspace.Countvalue.Value = Countdown
		while true do
			wait()
			if Countdown == 0 then
				Countdown = Count
			else --" "..Countdown.." Seconds "--
				wait(1)
				Countdown = Countdown - 1
				print(game.Workspace.Countvalue.Value)
				game.Workspace.Countvalue.Value =  Countdown
				if Countdown == 100 then
					script.Red.Disabled = false
					for i=0x1,#EVACTOOL do
						EVACTOOL[i].Transparency = 1
						EVACTOOL[i].CanCollide = false
					end
					for i=0x1,#spawns do
						spawns[i].Enabled = false
					end
					for i=0x1,#meltspawns do
						meltspawns[i].Enabled = true
					end
				elseif Countdown == 90 then
					if game.Workspace["MAIN.VALUES"].ALREADYEMH.Value == false then
						if game.Workspace["MAIN.EMERGENCYHEATER"]:FindFirstChild("Part") then
							game.Workspace["MAIN.EMERGENCYHEATER"].Part:remove()
						end
						game.Workspace["MAIN.EMERGENCYHEATER"].BUTTON.ClickDetector.MaxActivationDistance = 30
						game.Workspace["MAIN.EMERGENCYHEATER"].BUTTON.Script.Disabled = false
					end
				elseif Countdown == 20 then
					if game.Workspace["MAIN.VALUES"].ALREADYEMH.Value == false then
						game.Workspace["MAIN.EMERGENCYHEATER"].BUTTON.Script.Disabled = true	
						game.Workspace["MAIN.EMERGENCYHEATER"].BUTTON.ClickDetector.MaxActivationDistance = 0
					end
				elseif Countdown == 1 then
					--script.Parent.Voice.Disabled = false
					functionbh()
					return 0;
				end
			end
		end


	end
end
-------------------------------------------------------------------------
function functionemcountdown(val)
	local MUSICZ = nil
	local Countdown = 60
	if val == "melt" then
		MUSICZ = game.Workspace["MAIN.SOUNDS"].MELTDOWN
	elseif val == "freeze" then
		MUSICZ = game.Workspace["MAIN.SOUNDS"].FREEZEDOWN
	end
	MAINCONFIGS = game.Workspace["MAIN.VALUES"]
	wait(1)
	MUSICZ.EmergencyCoolantOST:Play()
	game.Workspace.Countdown.SurfaceGui.Frame.EM.Time.Match.Disabled = false
	if val == "melt" then
		script.Explosion.Disabled = false
	end

	local Count = Countdown
	game.Workspace.Countvalue.Value =  Countdown
	while true do
		wait() 
		if Countdown == 0 then
			Countdown = Count
		else --" "..Countdown.." Seconds "--
			wait(1)
			Countdown = Countdown - 1
			print(game.Workspace.Countvalue.Value)
			game.Workspace.Countvalue.Value =  Countdown
			if Countdown == 1 then
				if val == "melt" then
					functionnuke()
				elseif val == "freeze" then
					functionbh()
				end
				return 0;
			end
		end
	end
end
-------------------------------------------------------------------------
function meltdown()
	script.Parent.Pizzaday.Disabled = true
	script.Parent.Pizzaday.TOGGLE.Value = false
	script.Parent.Pizzaday.MODE.Value = 1
	game.Workspace["MAIN.SHAKE"].ScreenShake.Value = true
	ambient("dark")
	wait(0.2)
	ambient("normal")
	script.ServerRed.Disabled = false
	MUSIC.ScaryNoise:Play()
	game.Workspace.Mainframe.KeyPad.SurfaceGui.Frame.Visible = false
	game.Workspace.Mainframe.KeyPad.SurfaceGui.DISABLED.Visible = true
	wait(100)
	MUSIC.ScaryNoise:Stop()
	MUSIC.AnnouncementsSafe:Play()
	wait(4.022)
	MUSIC.ReactorSafe2:Play()
	NOTIFICATION:FireAllClients("Announcement", "All reactor core safeguards are now non-functional! Please prepare for reactor core meltdown!")
	wait(5.381)
	MUSIC.BackgroundTheme:Play()
	MUSIC.SoundBackground:Play()
	script.Explosion.Disabled = false
	game.Workspace.Countdown.SurfaceGui.Frame.SAFE.Visible = false
	game.Workspace.Countdown.SurfaceGui.Frame.EM.Visible = true
	wait(13)
	MUSIC.Noise1:Play()
	game.Workspace.SBGravity.Move.Disabled = false
	--------------------------------------------------------------------------
	wait(2)
	MUSIC.PowerDown:Play()	
	ambient("dark")
	wait(0.2)
	ambient("normal")
	wait(0.2)
	ambient("dark")
	--------------------------------------------------------------------------
	wait(18)
	MUSIC.Noise3:Play()
	ambient("normal")
	wait(0.2)
	ambient("dark")
	wait(18)
	MUSIC.Noise4:Play()
	ambient("normal")
	wait(0.2)
	ambient("dark")
	wait(18)
	MUSIC.Noise5:Play()
	ambient("normal")
	wait(0.2)
	ambient("dark")
	wait(4)
	MAINCONFIGS.GENERATOR.EPOWER.Value = true 
	if MAINCONFIGS.GENERATOR.ACTIVATED.Value == true then
		ambient("emergencypower")
		NOTIFICATION:FireAllClients("Announcement", "Emergency Power activated!")
	end

	wait(4)
	MUSIC.Noise9:Play()
	if game.Workspace["MAIN.VALUES"].ALREADYEM.Value == false then
		NOTIFICATION:FireAllClients("Announcement", "Activate emergency coolblaster in Sector D to save the reactor core(2 minutes)!")
	end
	wait(2.28)
	MUSIC.Noise2:Play()
	for i=0x1,#LOCKDOWNCHILD do
		if LOCKDOWNCHILD[i]:FindFirstChild("DOOR") then
			if LOCKDOWNCHILD[i].DOOR:FindFirstChild("S") then
				LOCKDOWNCHILD[i].DOOR:FindFirstChild("S").Disabled = false
			end
		elseif LOCKDOWNCHILD[i]:FindFirstChild("S") then
			LOCKDOWNCHILD[i]:FindFirstChild("S").Disabled = false
		end
	end
	--script.Countdown.Disabled = false
	game.Workspace.Lockdown.Script.Disabled = false
	MUSIC.LockdownAlarm:Play()
	functioncountdown("melt")
end

-------------------------------------------------------------------------
function freezedown()
	script.Parent.Pizzaday.Disabled = true
	script.Parent.Pizzaday.TOGGLE.Value = false
	script.Parent.Pizzaday.MODE.Value = 1
	--game.Workspace["MAIN.SHAKE"].ScreenShake.Value = true
	ambient("dark")
	wait(0.2)
	ambient("normal")
	ambient("ice")
	script.ServerRed.Disabled = false
	--MUSIC.ScaryNoise:Play()
	game.Workspace.Mainframe.KeyPad.SurfaceGui.Frame.Visible = false
	game.Workspace.Mainframe.KeyPad.SurfaceGui.DISABLED.Visible = true
	--wait(100)
	--MUSIC.ScaryNoise:Stop()
	MUSIC2.AnnouncementsSafe:Play()
	NOTIFICATION:FireAllClients("Announcement", "Warning! Reactor core is at critical!")
	wait(4.022)
	--MUSIC.ReactorSafe2:Play()

	MUSIC2.BackgroundTheme:Play()
	MUSIC2.SoundBackground:Play()
	--script.Explosion.Disabled = false
	game.Workspace.Countdown.SurfaceGui.Frame.SAFE.Visible = false
	game.Workspace.Countdown.SurfaceGui.Frame.EM.Visible = true
	wait(13)
	--MUSIC.Noise1:Play()
	game.Workspace.SBGravity.Move.Disabled = false
	--------------------------------------------------------------------------
	MUSIC2.PowerDown:Play()	
	ambient("dark")
	wait(0.2)
	ambient("ice")
	wait(0.2)
	ambient("dark")
	--------------------------------------------------------------------------
	wait(18)
	MUSIC2.Noise3:Play()
	ambient("ice")
	wait(0.2)
	ambient("dark")
	wait(18)
	MUSIC2.Noise4:Play()
	ambient("ice")
	wait(0.2)
	ambient("dark")
	wait(18)
	MUSIC2.Noise5:Play()
	ambient("ice")
	wait(0.2)
	ambient("dark")
	wait(4)
	MAINCONFIGS.GENERATOR.EPOWER.Value = true 
	if MAINCONFIGS.GENERATOR.ACTIVATED.Value == true then
		ambient("emergencypower")
		--ambient("ice")
		NOTIFICATION:FireAllClients("Announcement", "Emergency Power activated!")
	end


	wait(4)
	MUSIC2.Noise9:Play()
	wait(2.28)
	if game.Workspace["MAIN.VALUES"].ALREADYEMH.Value == false then
		NOTIFICATION:FireAllClients("Announcement", "Activate emergency heater in Sector D2 to save the reactor core(2 minutes)!")
	end
	--MUSIC.Noise2:Play()
	for i=0x1,#LOCKDOWNCHILD do
		if LOCKDOWNCHILD[i]:FindFirstChild("DOOR") then
			if LOCKDOWNCHILD[i].DOOR:FindFirstChild("S") then
				LOCKDOWNCHILD[i].DOOR:FindFirstChild("S").Disabled = false
			end
		elseif LOCKDOWNCHILD[i]:FindFirstChild("S") then
			LOCKDOWNCHILD[i]:FindFirstChild("S").Disabled = false	
		end
	end
	--script.Countdown.Disabled = false
	game.Workspace.Lockdown.Script.Disabled = false
	MUSIC.LockdownAlarm:Play()
	functioncountdown("freeze")
end

game.Workspace.Temp.Current.Changed:Connect(function()
	if game.Workspace.Temp.Current.Value >= game.Workspace.Temp.Max.Value and MAINCONFIGS.MELTDOWN.Value == false and MAINCONFIGS.FREEZEDOWN.Value == false then
		MAINCONFIGS.MELTDOWN.Value = true -- to prevent spam
		meltdown()
	end

	if game.Workspace.Temp.Current.Value <= game.Workspace.Temp.Freeze.Value and MAINCONFIGS.MELTDOWN.Value == false and MAINCONFIGS.FREEZEDOWN.Value == false then
		MAINCONFIGS.FREEZEDOWN.Value = true -- to prevent spam
		freezedown()
	end

end)

MAINCONFIGS.EMERGENCYCOUNTDOWN.Changed:Connect(function()
	if MAINCONFIGS.EMERGENCYCOUNTDOWN.Value == true then
		if MAINCONFIGS.MELTDOWN.Value == true then
			functionemcountdown("melt")
		elseif MAINCONFIGS.FREEZEDOWN.Value == true then
			functionemcountdown("freeze")
		end
	end
end)

MAINCONFIGS.GENERATOR.ACTIVATED.Changed:connect(function()
	if MAINCONFIGS.GENERATOR.ACTIVATED.Value == true and MAINCONFIGS.GENERATOR.EPOWER.Value == true then
		ambient("emergencypower")
		--if MAINCONFIGS.FREEZEDOWN.Value == true then
		--ambient("ice")
		--end
		NOTIFICATION:FireAllClients("Announcement", "Emergency Power activated!")
	elseif MAINCONFIGS.GENERATOR.ACTIVATED.Value == false and MAINCONFIGS.GENERATOR.EPOWER.Value == true then
		ambient("dark")
		NOTIFICATION:FireAllClients("Announcement", "Emergency Power disabled!")
	end
end)