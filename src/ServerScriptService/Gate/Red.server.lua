function Outage()
	local l = true
	local n = false
	local childs = workspace.CoreLiftyLights:GetChildren()
	for i = 0x1,#childs do
		childs[i].BrickColor = BrickColor.new("Really black")
		wait(1)
		childs[i].BrickColor = BrickColor.new("Really red")

	end
end


spawn(Outage)
