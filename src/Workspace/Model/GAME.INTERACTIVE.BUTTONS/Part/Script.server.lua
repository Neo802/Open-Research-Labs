active = false
script.Parent.CD.MouseClick:Connect(function()
	if active == false then
		active = true
	script.Parent.S:Play()
	if script.Parent.BrickColor == BrickColor.new("Persimmon") then
		script.Parent.BrickColor = BrickColor.new("Shamrock")
	    else	
		script.Parent.BrickColor = BrickColor.new("Persimmon")
	end
	wait(2) -- to prevent spams
	active = false
	end
end)