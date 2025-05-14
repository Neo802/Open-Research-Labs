while true do
	wait(6)
	part = Instance.new("Part")
	part.Parent = workspace["MAIN.DEBRIS"]
	part.Position = script.Parent.Position
	part.Size = Vector3.new(22, 10, 10)
	part.Material = "Neon"
	part.BrickColor = BrickColor.new("Really red")
	part.Anchored = false
	local clone = script.Parent.Kill:Clone()
	clone.Parent = part
	clone.Disabled = false
end