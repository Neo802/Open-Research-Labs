local TweenService = game:GetService("TweenService")
local opened = false
local debounce = false


 

script.Parent.SD.B.CD.MouseClick:Connect(function()
	
	local go = {}
	go.CFrame = script.Parent.MOTOR.CFrame * CFrame.Angles(0,-2.5,0)
	local gi = {}
	gi.CFrame = script.Parent.MOTOR.CFrame * CFrame.Angles(0,2.5,0)
	
    local tweenInfo = TweenInfo.new(2)

	if debounce == false then
		debounce = true
		if opened == false then
			opened = true
		  local tween = TweenService:Create(script.Parent.MOTOR, tweenInfo, go)
	      tween:Play()
		  tween.Completed:Wait()
		elseif opened == true then
			opened = false
		  local tween = TweenService:Create(script.Parent.MOTOR, tweenInfo, gi)
	      tween:Play()
		  tween.Completed:Wait()	
		end
		wait(2)--to reduce spam
		debounce = false
    end	
end)