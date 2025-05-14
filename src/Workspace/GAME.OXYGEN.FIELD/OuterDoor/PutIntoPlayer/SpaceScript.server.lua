player = script.Parent.Parent
torso = script.Parent
function makeLowGrav()
	print("Low grav", player.Name)
	local b = Instance.new("BodyForce")
	b.Name = "LowGrav"
	b.force = Vector3.new(0,2000,0)
	b.Parent = torso
end

function NoAir()
	local head = player.Head
	local headmesh = head.Mesh
	head.BrickColor = BrickColor.new(45) --Light blue
	headmesh.Scale = Vector3.new(1, 1, 1)
	wait(0.5)
	if player:findFirstChild("Space Hat") ~= nil then return end --Stop death if space helmet put on before time's up
	head.BrickColor = BrickColor.new(11) --Pastel Blue
	headmesh.Scale = Vector3.new(0.75, 0.75, 0.75)
	wait(0.5)
	if player:findFirstChild("Space Hat") ~= nil then return end
	head.BrickColor = BrickColor.new(23) --Bright blue
	headmesh.Scale = Vector3.new(0.5, 0.5, 0.5)
	wait(0.5)
	if player:findFirstChild("Space Hat") ~= nil then return end
	head.BrickColor = BrickColor.new(104) --Bright violet
	headmesh.Scale = Vector3.new(0.25, 0.25, 0.25)
	wait(0.5) --Altogether, two seconds to head back through airlock before asphyxiation (however ya spell it)
	if player:findFirstChild("Space Hat") ~= nil then return end
	--Helmet not recovered or player not back through airlock in time, so GAME OVER!
	player.Humanoid.Health = 0
	head:Remove()
	torso.LowGrav:remove()
	torso:BreakJoints()
	torso.Velocity = torso.CFrame.lookVector * 30
end

while true do
	if player:findFirstChild("Head") ~= nil then --Only run in a valid player
		if torso:findFirstChild("LowGrav") == nil then
			makeLowGrav() --On first run through of script, make low gravity
			script.OriginalHeadColor.Value = player.Head.BrickColor --Used by RemoveSpaceStuff script
		end
		--Helmet not found, so slowly suffocate in space!
		if player:findFirstChild("Space Hat") == nil and player:findFirstChild("Head") ~= nil then NoAir() end
		if player:findFirstChild("Space Hat") ~= nil and script.OriginalHeadColor.Value ~= player.Head.BrickColor then
			--Reverse asphyxiation (spellcheck plx) if helmet found in time
			player.Head.BrickColor = script.OriginalHeadColor.Value
			player.Head.Mesh.Scale = Vector3.new(1, 1, 1)
		end
	end
	wait(1)
end
	