function findRandomChild(model)
	return game.Workspace:children()[math.random(1,#model:children())]
end
while true do
	local ex = Instance.new("Explosion")
	local find = findRandomChild(game.Workspace)
	if find.Name == "Part" then
		ex.DestroyJointRadiusPercent = 0.5
		ex.BlastRadius = 5
		ex.Parent = find
		ex.Position = find.Position
	end
	wait (0.02)
end