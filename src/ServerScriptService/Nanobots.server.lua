--During regeneration, use this: game.ReplicatedStorage.NanobotsGUI:FireAllClients(1)
--After that, use this: game.ReplicatedStorage.NanobotsGUI:FireAllClients(0)
local debounce = false
--game.ReplicatedStorage.NanobotsACTIVE.OnServerEvent:Connect(function(plr, v,scriptname)
function Initiate()
	--print(plr,v,scriptname)
	if debounce == false then
		debounce = true
		print("for yet works")
		--if scriptname == "EmergencyCoolantGUI" or scriptname == "EmergencyHeaterGUI" or scriptname == "NanobotsActivation" then -- we don't want exploiters so
		--print("not a damn exploiter")
		local configs = game.Workspace["MAIN.VALUES"]
		local LSW = game.Workspace["GAME.LIGHTS"]:GetChildren()
		local LiftyLights = game.Workspace.CoreLiftyLights:GetChildren()
		local storage = game.Lighting.NANOBOTS
		local schild = storage:GetChildren()
		local players = game.Players:GetChildren()
		local spawnchild = game.Workspace["GAME.SPAWNS"]:GetChildren()
		local NOTIFICATION = game.ReplicatedStorage.Notification
		game.Workspace["MAIN.EMERGENCYCOOLANT"].BUTTON.Script.Disabled = true
		game.Workspace["MAIN.EMERGENCYHEATER"].BUTTON.Script.Disabled = true
		game.ReplicatedStorage.NanobotsGUI:FireAllClients(1)
		game.Workspace["GAME.MEGAFANCONTROL"].SurfaceGui.Frame["CONTROL.MAIN"].Disabled = true
		game.Workspace.Temp.Coolant.Disabled = true
		script.Parent.Gate.Disabled = true
		script.Parent.Gate.Red.Disabled = true
		script.Parent.Gate.ServerRed.Disabled = true
		script.Parent.Gate.Explosion.Disabled = true
		game.Workspace.Temp.HowMuch.Value = 0
		game.Workspace.Temp.Previous.Value = 0
		local spawns = game.Workspace["GAME.SPAWNS"]:GetChildren()
		local meltspawns = game.Workspace["GAME.MELTSPAWNS"]:GetChildren()
		--------------------------------------------------------------
		for i=0x1,#spawns do
			spawns[i].Enabled = true
		end
		for i=0x1,#meltspawns do
			meltspawns[i].Enabled = false
		end
		--------------------------------------------------------------
		game.Workspace["MAIN.VALUES"].COUNTDOWN.Value = false
		game.Workspace["MAIN.VALUES"].EMERGENCYCOUNTDOWN.Value = false
		game.Workspace["MAIN.VALUES"].MELTDOWN.Value = false
		game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value = false
		game.Workspace["MAIN.VALUES"].GENERATOR.ACTIVATED.Value = false
		game.Workspace["MAIN.VALUES"].GENERATOR.EPOWER.Value = false
		--------------------------------------------------------------

		game.Lighting.Ambient = Color3.fromRGB(98, 98, 98)
		game.Lighting.OutdoorAmbient = Color3.fromRGB(88, 88, 88)
		for i=0x1,#LiftyLights do
			LiftyLights[i].BrickColor = BrickColor.new("Dark blue")
		end
		game.Workspace.Mainframe.KeyPad.SurfaceGui.DISABLED.Visible = false
		game.Workspace.Mainframe.KeyPad.SurfaceGui.Frame.Visible = true
		for i=0x1,#LSW do
			if LSW[i]:FindFirstChild("Wire") then
				LSW[i]:FindFirstChild("Wire").SpotLight.Enabled = true
				LSW[i]:FindFirstChild("Wire").BrickColor = BrickColor.new("White")
				LSW[i]:FindFirstChild("Wire").SpotLight.Color = Color3.new(255, 255, 255)
				LSW[i]:FindFirstChild("Wire").Material = "Neon"	
				if LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light") then
					LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light").Light.Visible = true
					LSW[i]:FindFirstChild("Wire"):FindFirstChild("Light").Light.ImageColor3 = Color3.new(255, 255, 255)
				end
			end
			if LSW[i]:FindFirstChild("SpotLight") then
				LSW[i].SpotLight.Enabled = true
				LSW[i].BrickColor = BrickColor.new("White")
				LSW[i]:FindFirstChild("SpotLight").Color = Color3.new(255, 255, 255)
				LSW[i].Material = "Neon"	
			end	
			if 	LSW[i]:FindFirstChild("PointLight") then
				LSW[i].PointLight.Enabled = true
				LSW[i].BrickColor = BrickColor.new("White")
				LSW[i]:FindFirstChild("PointLight").Color = Color3.new(255, 255, 255)
				LSW[i].Material = "Neon"
			end
		end

		function regen(item)
			if game.Workspace:FindFirstChild(item) then
				print(" ",item," ")
				game.Workspace:FindFirstChild(item):Destroy()
				x = storage:FindFirstChild(item):Clone()
				x.Parent = game.Workspace 
			end
		end

		for i=1,#schild do
			regen(schild[i].Name)
		end

		local soundchild = game.Workspace["MAIN.SOUNDS"].MELTDOWN:GetChildren()
		local soundchild2 = game.Workspace["MAIN.SOUNDS"].FREEZEDOWN:GetChildren()
		for i=1,#soundchild do
			soundchild[i]:Stop()
		end
		for i=1,#soundchild2 do
			soundchild2[i]:Stop()
		end
		-----------------------------------------------


		--game.Workspace["GAME.MEGAFANCONTROL"].SurfaceGui.Frame["CONTROL.MAIN"].Disabled = false
		--game.Workspace["GAME.GENERATORSTATUS"].SurfaceGui.Frame.MAIN.Disabled = false
		--game.Workspace["GAME.GENERATORVOLTSTATUS"].SurfaceGui.Frame.MAIN.Disabled = false
		game.Workspace["MAIN.EMERGENCYCOOLANT"].GUI.SurfaceGui.BSOD.Visible = false
		game.Workspace["MAIN.EMERGENCYHEATER"].GUI.SurfaceGui.BSOD.Visible = false

		-----------------------------------------------

		game.Workspace["MAIN.VALUES"].MFZIG.Value = 0
		game.Workspace["MAIN.VALUES"].VOLTAGE.Value = 1
		game.Workspace["MAIN.VALUES"].POWER.Value = 1
		game.Workspace["MAIN.VALUES"].EXPLODED.Value = false
		game.Workspace["MAIN.VALUES"].EMERGENCYCOOLANT.Value = false
		game.Workspace["MAIN.VALUES"].EMERGENCYHEATER.Value = false
		game.Workspace["MAIN.VALUES"].CUTSCENE.Value = 1

		-----------------------------------------------

		game.Workspace.Temp.Rise.Disabled = false
		game.Workspace.Temp.Coolant.Disabled = false
		game.Workspace.Temp.Current.Value = 0
		--[[local newchild = game.Workspace.Temp["MEGA.SCRIPTS"]:GetChildren()
		for i=0x1,#newchild do
			if newchild[i]:IsA("Script") then
			newchild[i].Disabled = false
			end
		end]]
		wait(5)
		script.Parent.Pizzaday.Disabled = false
		game.ReplicatedStorage.NanobotsGUI:FireAllClients(0)
		game.Workspace["MAIN.DEBRIS"]:ClearAllChildren()
		NOTIFICATION:FireAllClients("Nanobots", "Thank you for calling us, the facility is now repaired. Respawning you shortly...")
		script.Parent.LockerService.Disabled = false
		script.Parent.Gate.Disabled = false
		debounce = false

		--wait(10)--let players take a break for a lil bit
		local playersz = game.Players:GetChildren()

		for i=1,#playersz do
			if playersz[i].Character:FindFirstChild("HumanoidRootPart") then
				playersz[i].Character.HumanoidRootPart.CFrame = spawns[math.random(1,#spawns)].CFrame * CFrame.new(0,1,0)
				playersz[i].Character.Humanoid.Jump = true
			else
				playersz[i]:LoadCharacter()
			end
			wait()--for a lag free experience
		end

		--end
	end
end

wait()

game.ReplicatedStorage.RemoteEvents.NanobotsNew.Event:Connect(function()
	Initiate()
end)
--script.Disabled = true