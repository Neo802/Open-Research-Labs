script.Parent.Touched:Connect(function(hit)
	if hit.Parent:findFirstChild("HumanoidRootPart") ~= nil then
		if hit.Parent.HumanoidRootPart:findFirstChild("SpaceScript") == nil then
			x = script.SpaceScript:clone()
			x.Parent = hit.Parent.HumanoidRootPart
			x.Disabled = false
		end
	end
end)