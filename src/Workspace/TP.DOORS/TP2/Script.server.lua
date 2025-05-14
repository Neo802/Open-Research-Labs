local opened = false;
local touched = false;
function FindFirstChildByMatch(Parent, Pattern)
    for Index, Value in ipairs(Parent:GetChildren()) do
        if Value.Name:match(Pattern) then
            return Value
        end
    end
    return nil
end
dunce = script.Parent.Variables.Debounce

 zsettings = script.Parent.Settings
 directions = zsettings.Directions
 speedval = zsettings.Speed
 oppout = zsettings.Timer.SlideIn
 nextu = zsettings.Timer["Next Use"]
x = 0
y = 0
z = 0
speed = script.Parent.Settings.Speed.Speed.Value
if directions["Move X"].Value == true then
	x = speedval.Movement.Value
end
if directions["Move Y"].Value == true then
	y = speedval.Movement.Value
end

if directions["Move Z"].Value == true then
	z = speedval.Movement.Value
end
function slideout()
			------[[Right Door]]------
			local TweenService = game:GetService("TweenService")
 
			local part = script.Parent.Righty
 
			local goal = {}
			goal.CFrame = CFrame.new(part.CFrame.X+x, part.CFrame.Y+y, part.CFrame.Z-z) * CFrame.Angles(part.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo = TweenInfo.new(speed)
 
			local tween = TweenService:Create(part, tweenInfo, goal)
			tween:Play()
			------[[Left Door]]------
 
			local part2 = script.Parent.Lefty
 
			local goal2 = {}
			goal2.CFrame = CFrame.new(part2.CFrame.X-x, part2.CFrame.Y-y, part2.CFrame.Z+z) * CFrame.Angles(part2.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo2 = TweenInfo.new(speed)
 
			local tween2 = TweenService:Create(part2, tweenInfo2, goal2)
			tween2:Play()
			
			------[[Right Window]]------
			local part3 = script.Parent.WindowRighty
 
			local goal3 = {}
			goal3.CFrame = CFrame.new(part3.CFrame.X+x, part3.CFrame.Y+y, part3.CFrame.Z-z) * CFrame.Angles(part3.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo3 = TweenInfo.new(speed)
 
			local tween3 = TweenService:Create(part3, tweenInfo3, goal3)
			tween3:Play()
			------[[Left Window]]------
			local part4 = script.Parent.WindowLefty
 
			local goal4 = {}
			goal4.CFrame = CFrame.new(part4.CFrame.X-x, part4.CFrame.Y-y, part4.CFrame.Z+z) * CFrame.Angles(part4.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo4 = TweenInfo.new(speed)
 
			local tween4 = TweenService:Create(part4, tweenInfo4, goal4)
			tween4:Play()
end

function slidein()
				------[[Right Door]]------
			local TweenService = game:GetService("TweenService")
 
			local part = script.Parent.Righty
 
			local goal = {}
			goal.CFrame = CFrame.new(part.CFrame.X-x, part.CFrame.Y-y, part.CFrame.Z+z) * CFrame.Angles(part.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo = TweenInfo.new(speed)
 
			local tween = TweenService:Create(part, tweenInfo, goal)--(part, tweenInfo, goal)
			tween:Play()
				------[[Right Window]]------ 
			local part4 = script.Parent.WindowRighty
 
			local goal4 = {}
			goal4.CFrame = CFrame.new(part4.CFrame.X-x, part4.CFrame.Y-y, part4.CFrame.Z+z) * CFrame.Angles(part4.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo4 = TweenInfo.new(speed)
 
			local tween4 = TweenService:Create(part4, tweenInfo4, goal4)
			tween4:Play()
			------[[Left Door]]------
 
			local part2 = script.Parent.Lefty
 
			local goal2 = {}
			goal2.CFrame = CFrame.new(part2.CFrame.X+x, part2.CFrame.Y+y, part2.CFrame.Z-z) * CFrame.Angles(part2.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo2 = TweenInfo.new(speed)
 
			local tween2 = TweenService:Create(part2, tweenInfo2, goal2)
			tween2:Play()
			------[[Left Window]]------
			local part3 = script.Parent.WindowLefty
 
			local goal3 = {}
			goal3.CFrame = CFrame.new(part3.CFrame.X+x, part3.CFrame.Y+y, part3.CFrame.Z-z) * CFrame.Angles(part3.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo3 = TweenInfo.new(speed)
 
			local tween3 = TweenService:Create(part3, tweenInfo3, goal3)
			tween3:Play()

end

script.Parent.Touch.Touched:connect(function(click)
	if touched == false then
		touched = true
	if opened == false then	
		opened = true
		script.Parent.Lefty.Open:Play()
		slideout()
		wait(2)
		click.Parent.HumanoidRootPart.CFrame = script.Parent.Parent.TP1.TP.CFrame + Vector3.new(0,1,0)
		wait(oppout.Value - 2)
		script.Parent.Lefty.Close:Play()
		slidein()
		wait(nextu.Value)
		opened = false
	end
	touched = false
	end
end)