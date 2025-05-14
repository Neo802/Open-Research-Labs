script.Parent.Touched:Connect(function(plr)
	if plr.Parent:FindFirstChild("Humanoid") then
		plr.Parent.HumanoidRootPart.Anchored = true
		
		for i = 1,10 do
			plr.Parent.Humanoid.Health = plr.Parent.Humanoid.Health - 20
			if script.Parent.Sound.Playing == false then
			script.Parent.Sound:Play()
			end
			wait(1)
		end
	end
end)