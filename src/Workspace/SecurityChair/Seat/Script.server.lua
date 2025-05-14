cloned = false


function GetPlayerFromWeld(weld)
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


script.Parent.ChildAdded:Connect(function(plr)
    if plr:IsA("Weld") then
	local player = GetPlayerFromWeld(plr)	
	    if cloned == false then
		    cloned = true
		    local x = script.Parent.CameraGui:Clone()
	    	x.Parent = player.PlayerGui
	        x.CamACT.Value = true
		    x.LocalScript.Disabled = false
    	end
	end
end)

script.Parent.ChildRemoved:Connect(function(plr)
    if plr:IsA("Weld") then
	local player = GetPlayerFromWeld(plr)	
	    if cloned == true then
		    
		    if player.PlayerGui:FindFirstChild("CameraGui") then
			   player.PlayerGui:FindFirstChild("CameraGui").CamACT.Value = false
			   wait(0.2)
			   player.PlayerGui:FindFirstChild("CameraGui"):Destroy()
		    end
		    cloned = false
    	end
	end
end)