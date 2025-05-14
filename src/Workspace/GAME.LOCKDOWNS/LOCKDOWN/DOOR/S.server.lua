local tweenservice = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(20)

local pos = {}
pos.CFrame = script.Parent.CFrame * CFrame.new(0,-20,0)

local tween = tweenservice:Create(script.Parent, tweenInfo, pos)
	      tween:Play()
		  tween.Completed:Wait()