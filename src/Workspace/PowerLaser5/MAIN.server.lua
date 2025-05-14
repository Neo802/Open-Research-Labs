
local button = script.Parent.Button.Button
local debounce = false
button.ClickDetector.MouseClick:connect(function()
	if debounce == false then
		debounce = true
		button.OpenSound:Play()
	
		if script.Parent.CONFIG.ENABLED.Value == false then
			button.On:Play()
			wait(1)
			button.Laser:Play()
			for i = 1,10 do
				script.Parent.lazer.Transparency = script.Parent.lazer.Transparency - .2
				wait()
			end
			
			script.Parent.lazer.Kill.Disabled = false
			script.Parent.CONFIG.ENABLED.Value = true
		elseif script.Parent.CONFIG.ENABLED.Value == true then
			button.Off:Play()
			for i = 1,10 do
				script.Parent.lazer.Transparency = script.Parent.lazer.Transparency + .2
				wait()
			end
			
			script.Parent.lazer.Kill.Disabled = true
			script.Parent.CONFIG.ENABLED.Value = false
		end
		
		debounce = false
	end
end)