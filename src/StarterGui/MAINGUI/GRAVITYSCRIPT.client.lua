doing = false

function grav()
	for i=1,30 do
		game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView + 1
		script.Parent.Gravity.BackgroundTransparency = script.Parent.Gravity.BackgroundTransparency + 0.01
		wait()
	end
	for i=1,30 do
		game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView - 1
		script.Parent.Gravity.BackgroundTransparency = script.Parent.Gravity.BackgroundTransparency + 0.01
		wait()
	end
	game.Workspace.CurrentCamera.FieldOfView = 70
end

game.ReplicatedStorage.Gravity.OnClientEvent:Connect(function(plr)
	if doing == false then
		doing = true
		script.Parent.Gravity.BackgroundTransparency = 0 
		for i=1,5 do
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") == nil then
				local Velo = Instance.new("BodyVelocity")
				Velo.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
				Velo.Velocity = Vector3.new(0,math.random(10,20),0)
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
			end
			grav()

			wait()
		end
		doing = false
		script.Parent.Gravity.BackgroundTransparency = 1
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Remove()
	end
end)

