doing = false

game.ReplicatedStorage.Chemicals.OnClientEvent:Connect(function(plr)
	if doing == false then
		doing = true
		for i=1,5 do
			game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - game.Players.LocalPlayer.Character.Humanoid.Health * 10/100
			wait(1)
		end
		doing = false
	end
end)

