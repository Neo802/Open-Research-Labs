while true do
	wait()
	if script.Parent.Toggle.Value == true then
	script.Parent.AlarmLight.Script.Disabled = false
	script.Parent.AlarmLight.Union.SpotLight.Enabled = true
	script.Parent.AlarmLight.Union.SpotLight2.Enabled = true
	elseif script.Parent.Toggle.Value == false then
		script.Parent.AlarmLight.Script.Disabled = true
	script.Parent.AlarmLight.Union.SpotLight.Enabled = false
	script.Parent.AlarmLight.Union.SpotLight2.Enabled = false
	end
end
