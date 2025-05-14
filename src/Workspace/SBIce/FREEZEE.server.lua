script.Parent.Touched:Connect(function(plr)
	if plr.Parent:FindFirstChild("Humanoid") then
		game.ReplicatedStorage.Freeze:FireClient(game.Players[plr.Parent.Name])
	end
end)