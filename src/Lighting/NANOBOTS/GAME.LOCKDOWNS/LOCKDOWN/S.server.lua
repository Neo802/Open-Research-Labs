local tweenservice = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(20)

local pos = {}
local pos2 = {}
pos.CFrame = script.Parent.Door1.CFrame * CFrame.new(0,0,-28)
pos2.CFrame = script.Parent.Door2.CFrame * CFrame.new(0,0,28)
--door 2 97.65 closed, 69.65 opened 28
--door 1 126.75 closed, 154.75 opened 28

local tween = tweenservice:Create(script.Parent.Door1, tweenInfo, pos)
local tween2 = tweenservice:Create(script.Parent.Door2, tweenInfo, pos2)
	      tween:Play()
	      tween2:Play()
		  tween.Completed:Wait()