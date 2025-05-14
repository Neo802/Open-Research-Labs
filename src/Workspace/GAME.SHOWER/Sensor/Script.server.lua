local child = script.Parent.Parent.Smokes:GetChildren()
local touched = false
script.Parent.Touched:Connect(function(touchedd)
	
	if touchedd.Parent:FindFirstChild("Humanoid") then
	if touched == false then
		touched = true
		for i=0x1,#child do
			if child[i]:FindFirstChild("Smoke") then
				child[i].Smoke.Enabled = true
			end
		end
		script.Parent.Parent.Picks.ParticleEmitter.Enabled = true
		script.Parent.Parent.Picks.Smoke.Enabled = true
		script.Parent.Parent.Watersoundmaker.Gas:Play()
		wait(3.5)
		for i=0x1,#child do
			if child[i]:FindFirstChild("Smoke") then
				child[i].Smoke.Enabled = false
			end
		end
		script.Parent.Parent.Picks.ParticleEmitter.Enabled = false
		script.Parent.Parent.Picks.Smoke.Enabled = false
		wait(2)
		touched = false
	end
	
	end
end)