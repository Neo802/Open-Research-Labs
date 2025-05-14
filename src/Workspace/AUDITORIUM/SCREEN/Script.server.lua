script.Parent.Parent.CONFIG.PRES.Changed:Connect(function()
	if script.Parent.Parent.CONFIG.PRES.Value == false then
		script.Parent.SurfaceGui.Enabled = false
		script.Parent.SurfaceLight.Enabled = false
	else
		script.Parent.SurfaceGui.Enabled = true
		script.Parent.SurfaceLight.Enabled = true	
	end
end)

script.Parent.Parent.CONFIG.SLIDES.Changed:Connect(function()
	script.Parent.SurfaceGui.Ftrue.Visible = false
	script.Parent.SurfaceGui.Ffalse.Visible = false
	
	script.Parent.SurfaceGui["F"..tostring(script.Parent.Parent.CONFIG.SLIDES.Value)].Visible = true
end)