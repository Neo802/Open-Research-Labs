script.Parent.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		hit.Parent.Humanoid.PlatformStand = true
		hit.Parent.Humanoid.Sit = true
	end
end)
