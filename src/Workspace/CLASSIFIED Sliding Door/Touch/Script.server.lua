local touched = false
Code = tostring(game.Workspace["MAIN.VALUES"].CORECODE.Value)
button = script.Parent.Parent.KeyPad.SurfaceGui.Frame.Enter
buttonchild = script.Parent.Parent.KeyPad.SurfaceGui.Frame.Frame:GetChildren()
guimain = script.Parent.Parent.KeyPad.SurfaceGui
local deboun = false

function FindFirstChildByMatch(Parent, Pattern)
    for Index, Value in ipairs(Parent:GetChildren()) do
        if Value.Name:match(Pattern) then
            return Value
        end
    end
    return nil
end
dunce = script.Parent.Parent.Variables.Debounce

 zsettings = script.Parent.Parent.Settings
 directions = zsettings.Directions
 speedval = zsettings.Speed
 oppout = zsettings.Timer.SlideIn
 nextu = zsettings.Timer["Next Use"]
x = 0
y = 0
z = 0
speed = script.Parent.Parent.Settings.Speed.Speed.Value
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
 
			local part = script.Parent.Parent.Righty
 
			local goal = {}
			goal.CFrame = CFrame.new(part.CFrame.X+x, part.CFrame.Y+y, part.CFrame.Z-z) * CFrame.Angles(part.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo = TweenInfo.new(speed)
 
			local tween = TweenService:Create(part, tweenInfo, goal)
			tween:Play()
			------[[Left Door]]------
 
			local part2 = script.Parent.Parent.Lefty
 
			local goal2 = {}
			goal2.CFrame = CFrame.new(part2.CFrame.X-x, part2.CFrame.Y-y, part2.CFrame.Z+z) * CFrame.Angles(part2.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo2 = TweenInfo.new(speed)
 
			local tween2 = TweenService:Create(part2, tweenInfo2, goal2)
			tween2:Play()
			
			------[[Right Window]]------
			local part3 = script.Parent.Parent.WindowRighty
 
			local goal3 = {}
			goal3.CFrame = CFrame.new(part3.CFrame.X+x, part3.CFrame.Y+y, part3.CFrame.Z-z) * CFrame.Angles(part3.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo3 = TweenInfo.new(speed)
 
			local tween3 = TweenService:Create(part3, tweenInfo3, goal3)
			tween3:Play()
			------[[Left Window]]------
			local part4 = script.Parent.Parent.WindowLefty
 
			local goal4 = {}
			goal4.CFrame = CFrame.new(part4.CFrame.X-x, part4.CFrame.Y-y, part4.CFrame.Z+z) * CFrame.Angles(part4.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo4 = TweenInfo.new(speed)
 
			local tween4 = TweenService:Create(part4, tweenInfo4, goal4)
			tween4:Play()
end

function slidein()
				------[[Right Door]]------
			local TweenService = game:GetService("TweenService")
 
			local part = script.Parent.Parent.Righty
 
			local goal = {}
			goal.CFrame = CFrame.new(part.CFrame.X-x, part.CFrame.Y-y, part.CFrame.Z+z) * CFrame.Angles(part.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo = TweenInfo.new(speed)
 
			local tween = TweenService:Create(part, tweenInfo, goal)--(part, tweenInfo, goal)
			tween:Play()
				------[[Right Window]]------ 
			local part4 = script.Parent.Parent.WindowRighty
 
			local goal4 = {}
			goal4.CFrame = CFrame.new(part4.CFrame.X-x, part4.CFrame.Y-y, part4.CFrame.Z+z) * CFrame.Angles(part4.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo4 = TweenInfo.new(speed)
 
			local tween4 = TweenService:Create(part4, tweenInfo4, goal4)
			tween4:Play()
			------[[Left Door]]------
 
			local part2 = script.Parent.Parent.Lefty
 
			local goal2 = {}
			goal2.CFrame = CFrame.new(part2.CFrame.X+x, part2.CFrame.Y+y, part2.CFrame.Z-z) * CFrame.Angles(part2.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo2 = TweenInfo.new(speed)
 
			local tween2 = TweenService:Create(part2, tweenInfo2, goal2)
			tween2:Play()
			------[[Left Window]]------
			local part3 = script.Parent.Parent.WindowLefty
 
			local goal3 = {}
			goal3.CFrame = CFrame.new(part3.CFrame.X+x, part3.CFrame.Y+y, part3.CFrame.Z-z) * CFrame.Angles(part3.CFrame:toEulerAnglesXYZ())
 
			local tweenInfo3 = TweenInfo.new(speed)
 
			local tween3 = TweenService:Create(part3, tweenInfo3, goal3)
			tween3:Play()

end
script.Parent.Touched:connect(function(click)
	if touched == false then
		touched = true
	if dunce.Value == 'nil' then	
		dunce.Value = 'something now!! lol'
		script.Parent.Parent.Lefty.Open:Play()
		slideout()
		wait(oppout.Value)
		script.Parent.Parent.Lefty.Close:Play()
		slidein()
		wait(nextu.Value)
		dunce.Value = 'nil'
	end
	touched = false
	end
end)

-----------------------------------------------------
local module = require(game.ReplicatedStorage.API)
local codetext = module.DeclinedStrings

button.MouseButton1Click:connect(function()
if (guimain.Frame.SCREEN.Text == tostring(game.Workspace["MAIN.VALUES"].CORECODE.Value)) then
guimain.Frame.SCREEN.Text = "GRANTED"
guimain.Parent.Sound2:play()
wait(0.5)
guimain.Frame.SCREEN.Text = ""

guimain.Enabled = false
if touched == false then
	touched = true
	if dunce.Value == 'nil' then	
		dunce.Value = 'something now!! lol'
		script.Parent.Parent.Lefty.Open:Play()
		slideout()
		wait(oppout.Value)
		script.Parent.Parent.Lefty.Close:Play()
		slidein()
		wait(nextu.Value)
		dunce.Value = 'nil'
	end
	touched = false
end
guimain.Enabled = true

return end
if deboun == false then
	deboun = true
guimain.Frame.SCREEN.Text = codetext[math.random(1,#codetext)]
guimain.Parent.Sound3:play()
wait(0.5)
guimain.Frame.SCREEN.Text = ""
wait(2)
deboun = false
end
end)

for i,v in pairs(buttonchild) do
	if v:IsA("TextButton") then
		v.MouseButton1Click:connect(function()
		   guimain.Parent.Sound:play()
	       guimain.Frame.SCREEN.Text = guimain.Frame.SCREEN.Text..v.Text
	    end)
	end
end

guimain.Frame.Clear.MouseButton1Click:connect(function()
	guimain.Parent.Sound4:play()
	guimain.Frame.SCREEN.Text = "CLEARED"
	wait(1)
	guimain.Frame.SCREEN.Text = ""
end)

guimain.Frame.Back.MouseButton1Click:connect(function()
   guimain.Parent.Sound:Play()
          guimain.Frame.SCREEN.Text = string.sub(guimain.Frame.SCREEN.Text,1,#guimain.Frame.SCREEN.Text-1)
          wait()
end)

-----------------------------------------------------