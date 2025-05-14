local child = script.Parent:GetChildren()

for i, v in pairs(child) do
	if v:IsA("Part") then
	v.Touched:Connect(function(hit)
	if game.Workspace.Temp.Current.Value >= 3600 then
		if hit.Parent:FindFirstChild("Humanoid") then
			hit.Parent.Head:Remove()
		end
	end
	end)
	end
end