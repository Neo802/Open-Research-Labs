local child = script.Parent.COLOR:GetChildren()
local child2 = script.Parent.LIGHTS:GetChildren()

script.Parent.Parent.CONFIG.SPOT.Changed:Connect(function()
	if script.Parent.Parent.CONFIG.SPOT.Value == false then
	    for i=0x1,#child do
		   if child[i]:FindFirstChild("SurfaceLight") then
			   child[i]:FindFirstChild("SurfaceLight").Enabled = false 
			   child[i].Color = Color3.fromRGB(0,0,0)
		   end
	    end
	    for i=0x1,#child2 do
		   if child2[i]:FindFirstChild("LIGHT") then
			   child2[i]:FindFirstChild("LIGHT").SpotLight.Enabled = false 
			   child2[i]:FindFirstChild("LIGHT").Color = Color3.fromRGB(0,0,0)
		   end
	    end
	else
		for i=0x1,#child do
		   if child[i]:FindFirstChild("SurfaceLight") then
			   child[i]:FindFirstChild("SurfaceLight").Enabled = true 
			   child[i].Color = Color3.fromRGB(255,255,255)
		   end
	    end
	    for i=0x1,#child2 do
		   if child2[i]:FindFirstChild("LIGHT") then
			   child2[i]:FindFirstChild("LIGHT").SpotLight.Enabled = true 
			   child2[i]:FindFirstChild("LIGHT").Color = Color3.fromRGB(255,255,255)
		   end
	    end
	end
end)