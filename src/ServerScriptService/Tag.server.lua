-- If you are changing the text colors, the values are placed as RGB values, and I suggest you look up a chart for them.

local marketplace = game:GetService("MarketplaceService")
local group = 11265895

game.Players.PlayerAdded:Connect(function(newPlayer)
	newPlayer.CharacterAdded:connect(function()
		gui=script.BillboardGui:Clone()
		gui.Parent=newPlayer.Character.Head
		gui.Adornee=newPlayer.Character.Head
		newPlayer.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

		gui.PName.Text = newPlayer.Name
		if newPlayer:IsInGroup(group) then
			gui.Group.Text = "Historical Archive"
			gui.Rank.Text = newPlayer:GetRoleInGroup(group)
			--gui.ImageLabel.Visible = true
		else
			gui.Group.Text = "None"
			gui.Rank.Text = "Guest"
			gui.ImageLabel.Visible = false
		end

		gui.Enabled = true
		if newPlayer.UserId == 481225191 then 
			gui.PName.TextColor3 = Color3.fromRGB(255,255,255) 
			gui.PName.Text = "The Father of the Labs"
			gui.Enabled = true
		end
	end)
end)
