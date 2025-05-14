local opened = false
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
	print('honk')
	z = speedval.Movement.Value
end
print(x)
print(y)
print(z)
function slideout()
			------[[Right Door]]------
			local TweenService = game:GetService("TweenService")
 
			local part = script.Parent.DOOR2
 
			local goal = {}
			goal.CFrame = CFrame.new(part.CFrame.X+x, part.CFrame.Y+y, part.CFrame.Z-z) * CFrame.Angles(part.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo = TweenInfo.new(speed)
 
			local tween = TweenService:Create(part, tweenInfo, goal)
			tween:Play()
			------[[Left Door]]------
 
			local part2 = script.Parent.DOOR
 
			local goal2 = {}
			goal2.CFrame = CFrame.new(part2.CFrame.X-x, part2.CFrame.Y-y, part2.CFrame.Z+z) * CFrame.Angles(part2.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo2 = TweenInfo.new(speed)
 
			local tween2 = TweenService:Create(part2, tweenInfo2, goal2)
			tween2:Play()
end

function slidein()
				------[[Right Door]]------
			local TweenService = game:GetService("TweenService")
 
			local part = script.Parent.DOOR2
 
			local goal = {}
			goal.CFrame = CFrame.new(part.CFrame.X-x, part.CFrame.Y-y, part.CFrame.Z+z) * CFrame.Angles(part.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo = TweenInfo.new(speed)
 
			local tween = TweenService:Create(part, tweenInfo, goal)--(part, tweenInfo, goal)
			tween:Play()
			------[[Left Door]]------
 
			local part2 = script.Parent.DOOR
 
			local goal2 = {}
			goal2.CFrame = CFrame.new(part2.CFrame.X+x, part2.CFrame.Y+y, part2.CFrame.Z-z) * CFrame.Angles(part2.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo2 = TweenInfo.new(speed)
 
			local tween2 = TweenService:Create(part2, tweenInfo2, goal2)
			tween2:Play()

end

for i,v in pairs(script.Parent.BUTTONS:GetChildren()) do
	if v:FindFirstChild("CD") then
	   v.CD.MouseClick:connect(function()
	    if opened == false then
		opened = true
	    if dunce.Value == 'nil' then	
		dunce.Value = 'something now!! lol'
		slideout()
		wait(oppout.Value)
		slidein()
		wait(nextu.Value)
		dunce.Value = 'nil'
	    end
	    opened = false
	    end
	   end)
	end
end