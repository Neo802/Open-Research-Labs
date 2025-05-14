function Outage()
	local l = true
	local n = false
	local childs = workspace.ServerA:GetChildren()
	for i = 0x1,#childs do
		local childs2 = childs[i]:GetChildren()
		for i = 0x1,#childs2 do
			if childs2[i].Name == "Part" then
				childs2[i].BrickColor = BrickColor.new("Really black")
				wait(1)
				childs2[i].BrickColor = BrickColor.new("Really red")

			end
		end
	end
end


spawn(Outage)

function Outage2()
	local l = true
	local n = false
	local childs = workspace.ServerB:GetChildren()
	for i = 0x1,#childs do
		local childs2 = childs[i]:GetChildren()
		for i = 0x1,#childs2 do
			if childs2[i].Name == "Part" then
				childs2[i].BrickColor = BrickColor.new("Really black")
				wait(1)
				childs2[i].BrickColor = BrickColor.new("Really red")

			end
		end
	end
end


spawn(Outage2)

function Outage3()
	local l = true
	local n = false
	local childs = workspace.ServerC:GetChildren()
	for i = 0x1,#childs do
		local childs2 = childs[i]:GetChildren()
		for i = 0x1,#childs2 do
			if childs2[i].Name == "Part" then
				childs2[i].BrickColor = BrickColor.new("Really black")
				wait(1)
				childs2[i].BrickColor = BrickColor.new("Really red")

			end
		end
	end
end


spawn(Outage3)

function Outage4()
	local l = true
	local n = false
	local childs = workspace.ServerD:GetChildren()
	for i = 0x1,#childs do
		local childs2 = childs[i]:GetChildren()
		for i = 0x1,#childs2 do
			if childs2[i].Name == "Part" then
				childs2[i].BrickColor = BrickColor.new("Really black")
				wait(1)
				childs2[i].BrickColor = BrickColor.new("Really red")

			end
		end
	end
end


spawn(Outage4)

