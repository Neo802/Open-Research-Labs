game.ReplicatedStorage.EmergencyHeaterACT.OnClientEvent:connect(function(plr)
	if game.Workspace["MAIN.VALUES"].EMERGENCYHEATER.Value == true and script.Parent.VALUES.Intro.Value == false then
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		--local plr = ""..game.Workspace["MAIN.VALUES"].ACTIVATOR.Value
		--script.Parent.Parent.SHOPUI.Enabled = false
		script.Parent.ECoolant.Frame.Position = UDim2.new(0, 0,-0.105, 0)
		script.Parent.ECoolant.Frame2.Position = UDim2.new(0, 0,0.905, 0)
		game.Workspace["MAIN.VALUES"].CUTSCENE.Value = 1 
		local player = game.Players.LocalPlayer.PlayerGui
		local coolantplr = game.Workspace["MAIN.VALUES"].COOLANTGENPLAYER.Value
		local coolants = game.Workspace:WaitForChild("Coolant")
		local active = coolants.Active
		local ready = coolants.Ready
		local playerspeed = game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed
		local playertorso = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		local Humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
		local TEXTONE = "The Emergency Heater was activated by "..plr.."..."
		local TEXTTWO = plr.." was brave enough to activate the last solution to save the reactor core..."
		local TEXTTHREE = "Now let's watch the Emergency Heater in action..."
		local TEXTFOUR = "The Emergency Heater is being delivered to the reactor core..."
		--------------------------------------------------------------------------------------------------------
		local TEXTI = "Well, look at that! The coolant generator and the coolant control are disabled!"
		local TEXTII = "This means that there's no obstacle for the Emergency Heater to reach to the reactor core!"
		local TEXTII5 = "Now let's see how the temperature is rising up to normal."
		local TEXTIII = "Thanks to "..plr..", the freezedown has successfully been aborted!"
		local TEXTIV = "Now go back to work and make sure this event doesn't happen again."--"Now the nanobots are going to repair the facility."
		--------------------------------------------------------------------------------------------------------
		local TEXTIC = "Well, look at that! The coolant control from the Control Room is disabled!"
		local TEXTIIC = "But since "..coolantplr.." has enabled the coolant generator"
		local TEXTIICN = "But since everyone was lazy enough to not disable the coolant generator"
		local TEXTIIC5 = "Emergency Heater couldn't reach to the reactor core!"
		local TEXTIIIC = "Thank you, "..coolantplr.." for bringing us into a terrible situation!"
		local TEXTIVC = "You have one minute left to evacuate the facility."--"Now the nanobots are going to repair the facility."
		--------------------------------------------------------------------------------------------------------
		local TEXTI2 = "O.o! The coolant geneator and the cooling control from the control room are enabled!"
		local TEXTII2 = "This means that the Emergency Heater can't reach to the reactor core!"
		local TEXTIII2 = "I give you one minute to evacuate the facility!"
		--------------------------------------------------------------------------------------------------------
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", false)
		script.Parent.MainScript.Disabled = true
		script.Parent.INTRO.Visible = false
		script.Parent.Cut.Disabled = true
		local child = script.Parent.CutS:GetChildren()
		for i=0x1,#child do
			child[i].Disabled = true
		end
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
		game.Workspace.CurrentCamera.FieldOfView = 70
		local GUI = script.Parent.ECoolant
		PARENT = script.Parent
		CUTSCENESCENES = PARENT.CutEH
		script.Parent.Sound:Stop()

		script.Parent.BlackScreen.Visible = true
		for i=1,25 do
			script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency - 0.1 
			wait()
		end
		GUI.Visible = true
		---------------------------- MAIN SCRIPT ----------------------------
		if game.Workspace["MAIN.VALUES"].CUTSCENE.Value == 1 then
			CUTSCENESCENES.Cut1.Disabled = false
			for i=1,25 do
				script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency + 0.1
				wait()
			end
			for i=1,#TEXTONE do
				GUI.MAIN.Text = string.sub(TEXTONE,1,i)
				wait()
			end
			wait(1)
			for i=1,#TEXTTWO do
				GUI.MAIN.Text = string.sub(TEXTTWO,1,i)
				wait()
			end
			-----------BADGE HANDLER-------------
			--[[if game.Players.LocalPlayer.Name == plr then
				game.ReplicatedStorage.Badge:FireServer(game.Players.LocalPlayer.Name,2124478583)
			end]]
			-------------------------------------
			wait(0.5)
			CUTSCENESCENES.Cut1.Disabled = true
			game.Workspace["MAIN.VALUES"].CUTSCENE.Value = 2 
			for i=1,25 do
				script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency - 0.1 
				wait()
			end
		end

		if game.Workspace["MAIN.VALUES"].CUTSCENE.Value == 2 then
			for i=1,25 do
				script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency + 0.1 
				wait()
			end
			CUTSCENESCENES.Cut1.Disabled = true
			CUTSCENESCENES.Cut2.Disabled = false
			for i=1,#TEXTTHREE do
				GUI.MAIN.Text = string.sub(TEXTTHREE,1,i)
				wait()
			end
			game.ReplicatedStorage.HeatingProcess:FireServer()
			wait(6)
			CUTSCENESCENES.Cut2.Disabled = true
			game.Workspace["MAIN.VALUES"].CUTSCENE.Value = 3 
			for i=1,25 do
				script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency - 0.1 
				wait()
			end
		end

		if game.Workspace["MAIN.VALUES"].CUTSCENE.Value == 3 then
			for i=1,25 do
				script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency + 0.1 
				wait()
			end
			CUTSCENESCENES.Cut2.Disabled = true	
			CUTSCENESCENES.Cut3.Disabled = false
			for i=1,#TEXTFOUR do
				GUI.MAIN.Text = string.sub(TEXTFOUR,1,i)
				wait()
			end
			wait(1)
			if active.Value == true and ready.Value == true then	
				for i=1,#TEXTI2 do
					GUI.MAIN.Text = string.sub(TEXTI2,1,i)
					wait()
				end
				wait(1)
				for i=1,#TEXTII2 do
					GUI.MAIN.Text = string.sub(TEXTII2,1,i)
					wait()
				end
				wait(1)
				for i=1,#TEXTIII2 do
					GUI.MAIN.Text = string.sub(TEXTIII2,1,i)
					wait()
				end
				wait(2)
				GUI.MAIN.Text = ""
				GUI.Frame:TweenPosition(UDim2.new(0, 0,-1.105, 0),"Out")
				GUI.Frame2:TweenPosition(UDim2.new(0, 0,1.9, 0),"Out")
				CUTSCENESCENES.Cut3.Disabled = true
				workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
				workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
				game.Workspace.CurrentCamera.FieldOfView = 70
				wait(2)
				GUI.Visible = false
				game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
				game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
				game.ReplicatedStorage.EmergencyHeaterAPI:FireServer("false")
				print("[ORACLE DEBUG SYSTEM]: ","Maybe next time dude...")
				--script.Parent.Parent.SHOPUI.Enabled = true
				script.Disabled = true

			elseif active.Value == true and ready.Value == false then	
				for i=1,#TEXTIC do
					GUI.MAIN.Text = string.sub(TEXTIC,1,i)
					wait()
				end
				wait(1)
				game.Workspace["MAIN.VALUES"].CUTSCENE.Value = 5 
				for i=1,25 do
					script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency - 0.1 
					wait()
				end

				if game.Workspace["MAIN.VALUES"].CUTSCENE.Value == 5 then 

					for i=1,25 do
						script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency + 0.1 
						wait()
					end
					CUTSCENESCENES.Cut3.Disabled = true	
					CUTSCENESCENES.Cut5.Disabled = false
					if coolantplr ~= "" and coolantplr ~= " " then
						for i=1,#TEXTIIC do
							GUI.MAIN.Text = string.sub(TEXTIIC,1,i)
							wait()
						end
					else
						for i=1,#TEXTIICN do
							GUI.MAIN.Text = string.sub(TEXTIICN,1,i)
							wait()
						end
					end
					wait(1)
					for i=1,#TEXTIIC5 do
						GUI.MAIN.Text = string.sub(TEXTIIC5,1,i)
						wait()
					end
					wait(1)
					if coolantplr ~= "" and coolantplr ~= " " then
						for i=1,#TEXTIIIC do
							GUI.MAIN.Text = string.sub(TEXTIIIC,1,i)
							wait()
						end
						-----------BADGE HANDLER-------------
						--[[if game.Players.LocalPlayer.Name == coolantplr then
							game.ReplicatedStorage.Badge:FireServer(game.Players.LocalPlayer.Name,2124478581)
						end]]
						-------------------------------------
						wait(1)
					end

					for i=1,#TEXTIVC do
						GUI.MAIN.Text = string.sub(TEXTIVC,1,i)
						wait()
					end


					wait(2)
					GUI.MAIN.Text = ""
					GUI.Frame:TweenPosition(UDim2.new(0, 0,-1.105, 0),"Out")
					GUI.Frame2:TweenPosition(UDim2.new(0, 0,1.9, 0),"Out")
					CUTSCENESCENES.Cut5.Disabled = true
					workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
					workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
					game.Workspace.CurrentCamera.FieldOfView = 70
					wait(2)
					GUI.Visible = false
					game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
					game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
					game.ReplicatedStorage.EmergencyHeaterAPI:FireServer("false")
					print("[ORACLE DEBUG SYSTEM]: ","Maybe next time dude...")
					--script.Parent.Parent.SHOPUI.Enabled = true
					script.Disabled = true
				end

			elseif active.Value == false and ready.Value == false then	
				for i=1,#TEXTI do
					GUI.MAIN.Text = string.sub(TEXTI,1,i)
					wait()
				end
				wait(1)
				for i=1,#TEXTII do
					GUI.MAIN.Text = string.sub(TEXTII,1,i)
					wait()
				end
				wait(1)
				game.Workspace["MAIN.VALUES"].CUTSCENE.Value = 4 
				for i=1,25 do
					script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency - 0.1 
					wait()
				end

				if game.Workspace["MAIN.VALUES"].CUTSCENE.Value == 4 then
					game.ReplicatedStorage.EmergencyTemp:FireServer()
					game.ReplicatedStorage.EmergencyHeaterAPI:FireServer("true")	
					for i=1,25 do
						script.Parent.BlackScreen.BackgroundTransparency = script.Parent.BlackScreen.BackgroundTransparency + 0.1 
						wait()
					end

					CUTSCENESCENES.Cut3.Disabled = true	
					CUTSCENESCENES.Cut4.Disabled = false

					for i=1,#TEXTII5 do
						GUI.MAIN.Text = string.sub(TEXTII5,1,i)
						wait()
					end
					wait(1)
					for i=1,#TEXTIII do
						GUI.MAIN.Text = string.sub(TEXTIII,1,i)
						wait()
					end	

					wait(1)
					for i=1,#TEXTIV do
						GUI.MAIN.Text = string.sub(TEXTIV,1,i)
						wait()
					end	
					wait(2)
					GUI.MAIN.Text = ""
					GUI.Frame:TweenPosition(UDim2.new(0, 0,-1.105, 0),"Out")
					GUI.Frame2:TweenPosition(UDim2.new(0, 0,1.9, 0),"Out")
					CUTSCENESCENES.Cut4.Disabled = true
					workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
					workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
					game.Workspace.CurrentCamera.FieldOfView = 70
					wait(2)
					GUI.Visible = false
					game.ReplicatedStorage.Money:FireServer(plr,1,"saving the core")
					game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
					game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
					print("[ORACLE DEBUG SYSTEM]: ","Yeah, activated...")
					--script.Parent.Parent.SHOPUI.Enabled = true
					--game.ReplicatedStorage.NanobotsACTIVE:FireServer(plr,script.Name)
					script.Disabled = true
				end

			end
		end
		---------------------------------------------------------------------
	end
end)
