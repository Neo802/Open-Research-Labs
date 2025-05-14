-- Like the cooling fans but more different -- 

script.Parent.Activated.Changed:connect(function()
	wait()
	if script.Parent.Activated.Value == false then
		script.Parent.Vent.Running:Stop()
		script.Parent.Vent.TurnOn:Stop()
		script.Parent.Vent.TurnOff:Play()
		script.Parent.P1.Air1.Smoke.Enabled = false
		script.Parent.P1.Air2.Smoke.Enabled = false
		script.Parent.P1.Air3.Smoke.Enabled = false
		script.Parent.P1.Air4.Smoke.Enabled = false
		
		script.Parent.P2.Air1.Smoke.Enabled = false
		script.Parent.P2.Air2.Smoke.Enabled = false
		script.Parent.P2.Air3.Smoke.Enabled = false
		script.Parent.P2.Air4.Smoke.Enabled = false
		
		script.Parent.Vent.BrickColor = BrickColor.new("Black")
		
		
	    elseif script.Parent.Activated.Value == true then
		script.Parent.Vent.TurnOff:Stop()
		script.Parent.Vent.TurnOn:Play()
		script.Parent.P1.Air1.Smoke.Enabled = true
		script.Parent.P1.Air2.Smoke.Enabled = true
		script.Parent.P1.Air3.Smoke.Enabled = true
		script.Parent.P1.Air4.Smoke.Enabled = true
		
		script.Parent.P2.Air1.Smoke.Enabled = true
		script.Parent.P2.Air2.Smoke.Enabled = true
		script.Parent.P2.Air3.Smoke.Enabled = true
		script.Parent.P2.Air4.Smoke.Enabled = true
		script.Parent.Vent.Running:Play()
		
		script.Parent.Vent.BrickColor = BrickColor.new("Teal")
	end
end)