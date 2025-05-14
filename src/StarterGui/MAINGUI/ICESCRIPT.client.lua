doing = false

function grav()
for i=1,30 do
	--game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView + 1
	script.Parent.Freeze.BackgroundTransparency = script.Parent.Freeze.BackgroundTransparency + 0.01
	wait()
end
for i=1,30 do
	--game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView - 1
	script.Parent.Freeze.BackgroundTransparency = script.Parent.Freeze.BackgroundTransparency + 0.01
	wait()
end
end

game.ReplicatedStorage.Freeze.OnClientEvent:Connect(function(plr)
	if doing == false then
		doing = true
	script.Parent.Freeze.BackgroundTransparency = 0 
	for i=1,5 do

		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - game.Players.LocalPlayer.Character.Humanoid.Health * 10/100
		grav()
		
	    wait()
	end
	doing = false
	script.Parent.Freeze.BackgroundTransparency = 1
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	
	end
end)

