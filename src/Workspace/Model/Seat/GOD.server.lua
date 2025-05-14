script.Parent.Touched:Connect(function(plr)
	if plr.Parent:FindFirstChild("Humanoid") then
		plr.Parent:FindFirstChild("Humanoid").MaxHealth = math.huge
		plr.Parent:FindFirstChild("Humanoid").Health = math.huge
	end
end)

script.Parent.TouchEnded:Connect(function(plr)
	if plr.Parent:FindFirstChild("Humanoid") then
		plr.Parent:FindFirstChild("Humanoid").MaxHealth = 100
		plr.Parent:FindFirstChild("Humanoid").Health = 100
	end
end)