script.Parent.Touched:Connect(function(hit)
	local player = hit.Parent
	if player.className == "Hat" then return end
	if player:findFirstChild("Humanoid") == nil then return end
	if player:findFirstChild("HumanoidRootPart"):findFirstChild("SpaceScript") ~= nil and player:findFirstChild("Head") ~= nil then
		player.Head.BrickColor = player.HumanoidRootPart.SpaceScript.OriginalHeadColor.Value
		player.Head.Mesh.Scale = Vector3.new(1, 1, 1)
		player.HumanoidRootPart.SpaceScript:remove()
	end
	if player:findFirstChild("HumanoidRootPart"):findFirstChild("LowGrav") ~= nil then
		player.HumanoidRootPart.LowGrav:remove()
	end
end)