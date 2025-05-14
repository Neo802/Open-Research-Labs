local opened = false
local config = game.Workspace["MAIN.VALUES"].GENERATOR
local gens = script.Parent.GENERATORS
local status = script.Parent.STATUS
local sounds = script.Parent.SOUNDS
local colors = script.Parent.COLORS

script.Parent.Lever1.LeverButton.ClickDetector.MouseClick:connect(function()
	if opened == false then
		if config.ACTIVATED.Value == false then
			script.Parent.Lever1.LeverButton.ClickDetector.MaxActivationDistance = 0
			opened = true

			script.Parent.Lever1.LeverButton.Sound:Play()
			for i =1,30 do
				script.Parent.Lever1:SetPrimaryPartCFrame(script.Parent.Lever1.PrimaryPart.CFrame * CFrame.Angles(0.1,0,0))
				wait()
			end

			-------------------------------------------------------------------------
			sounds.ALARM:Play()
			gens.GEN1.Alarm.Toggle.Value = true
			gens.GEN2.Alarm.Toggle.Value = true
			gens.GEN3.Alarm.Toggle.Value = true
			wait(1)
			gens.GEN1.ACTIVE.Value = true
			status.ONE.Color = colors.PENDING.Value
			wait(1)
			gens.GEN2.ACTIVE.Value = true
			status.TWO.Color = colors.PENDING.Value
			wait(1)
			gens.GEN3.ACTIVE.Value = true
			status.THREE.Color = colors.PENDING.Value
			wait(7)
			sounds.STARTUP:Play()
			--[[while sounds.STARTUP.Playing == true do
				wait(1)
			end]]
			wait(20)
			sounds.RUNNING:Play()
			wait(1)
			status.ONE.Color = colors.ON.Value
			status.TWO.Color = colors.ON.Value
			status.THREE.Color = colors.ON.Value
			gens.GEN1.Alarm.Toggle.Value = false
			gens.GEN2.Alarm.Toggle.Value = false
			gens.GEN3.Alarm.Toggle.Value = false
			config.ACTIVATED.Value = true

			-------------------------------------------------------------------------
			opened = false
			script.Parent.Lever1.LeverButton.ClickDetector.MaxActivationDistance = 20

		elseif config.ACTIVATED.Value == true then
			script.Parent.Lever1.LeverButton.ClickDetector.MaxActivationDistance = 0
			opened = true

			script.Parent.Lever1.LeverButton.Sound:Play()
			for i =1,30 do
				script.Parent.Lever1:SetPrimaryPartCFrame(script.Parent.Lever1.PrimaryPart.CFrame * CFrame.Angles(-0.1,0,0))
				wait()
			end

			-------------------------------------------------------------------------
			sounds.ALARM:Play()
			gens.GEN1.Alarm.Toggle.Value = true
			gens.GEN2.Alarm.Toggle.Value = true
			gens.GEN3.Alarm.Toggle.Value = true
			wait(1)
			gens.GEN3.ACTIVE.Value = false
			status.THREE.Color = colors.PENDING.Value
			wait(1)
			gens.GEN2.ACTIVE.Value = false
			status.TWO.Color = colors.PENDING.Value
			wait(1)
			gens.GEN1.ACTIVE.Value = false
			status.ONE.Color = colors.PENDING.Value
			wait(7)
			sounds.RUNNING:Stop()
			sounds.SHUTDOWN:Play()
			wait(20)
			--[[while sounds.SHUTDOWN.Playing == true do
				wait(1)
			end]]
			wait(1)
			status.ONE.Color = colors.OFF.Value
			status.TWO.Color = colors.OFF.Value
			status.THREE.Color = colors.OFF.Value
			gens.GEN1.Alarm.Toggle.Value = false
			gens.GEN2.Alarm.Toggle.Value = false
			gens.GEN3.Alarm.Toggle.Value = false
			config.ACTIVATED.Value = false

			-------------------------------------------------------------------------

			opened = false
			script.Parent.Lever1.LeverButton.ClickDetector.MaxActivationDistance = 20
		end
	end
end)