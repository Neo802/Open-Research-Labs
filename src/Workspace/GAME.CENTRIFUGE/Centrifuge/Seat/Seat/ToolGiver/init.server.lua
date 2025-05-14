
wait(0.1)

local seat = script.Parent
function GetPlayerFromWeld( weld )
	if weld.Part1.Name == "HumanoidRootPart" then
		local character = weld.Part1.Parent:findFirstChild("Humanoid")
		if (character) then
			local player = game.Players:GetPlayerFromCharacter(character.Parent)
			if (player) then
				return player
			end
		end
	end
	return nil
end

seat.ChildAdded:connect(function( newChild )	
	if newChild:IsA("Weld") then
		newChild.C0 = CFrame.new(0,(seat.Size.y/2 + 1.5),0)
		newChild.C1 = CFrame.new(0, 0.5, 0)
		local player = GetPlayerFromWeld(newChild)
		if (player) then
			local newGUI = script.DriveGUI:Clone()
			wait(0.1)
			newGUI.Car.Value = seat
			wait(0.1)
			newGUI.Parent = player.PlayerGui
		end
	end
end)

seat.ChildRemoved:connect(function( oldChild )
	if oldChild:IsA("Weld") then
		local player = GetPlayerFromWeld( oldChild )
		if player then
			if player.PlayerGui:findFirstChild("DriveGUI") then
				player.PlayerGui.DriveGUI.Car.Value = nil
				wait(0.2)
				player.PlayerGui.DriveGUI:Destroy()
			end
		end
	end
end)