script.Parent.Touched:Connect(function(av)
	if av.Parent:FindFirstChild("Humanoid") then
		av.Parent:FindFirstChild("Humanoid").Health = av.Parent:FindFirstChild("Humanoid").Health - 10
	end
end)