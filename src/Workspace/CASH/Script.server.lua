--Don't touch this
game.Players.PlayerAdded:connect(function(Player)
	Player.CharacterAdded:connect(function(Character)
		local PlayerGui = Player:WaitForChild('PlayerGui')
		for _,v in pairs(script.Parent:GetChildren()) do
			if v.ClassName == "SurfaceGui" then
				ClonedItem = v:Clone()
				ClonedItem.Parent = PlayerGui
				ClonedItem.Adornee = script.Parent
				ClonedItem.Enabled = true
			end
		end
	end)
end)