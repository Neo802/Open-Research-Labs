local child = script.Parent.GLASS:GetChildren()
game.Workspace["MAIN.VALUES"].MELTDOWN.Changed:connect(function()
	wait()
	if game.Workspace["MAIN.VALUES"].MELTDOWN.Value == true then
	    wait(math.random(50,100))
		script.Parent.Part.Transparency = 1
		script.Parent.Part.CanCollide = false
		script.Parent.Union.Transparency = 0.9
		script.Parent.Union.CanCollide = true
		script.Parent.Union.Sound:Play()
		for i=0x1,#child do
			child[i].Transparency = 0.9
			child[i].CanCollide = true
		end
		script.Disabled = true
	end
end)