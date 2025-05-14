opened = false
debounce = false
child = script.Parent:GetChildren()
TweenService = game:GetService("TweenService")
local pos = {} --OPEN
local pos2 = {} --CLOSE
--19 to 44 = 25



local tweenInfo = TweenInfo.new(12)--,Enum.EasingStyle.Sine,Enum.EasingDirection.In)



function open()
	script.Parent.DOOR.Door.Open:Play()
	pos.CFrame = script.Parent.DOOR.Door.CFrame * CFrame.new(0,25,0)
	for i=0x1,#child do
		if child[i].Name == "ButtonSupport" then
			child[i].COLOR.BrickColor = BrickColor.new("Gold")
		end
	end
	local tween = TweenService:Create(script.Parent.DOOR.Door, tweenInfo, pos)
	      tween:Play()
		  tween.Completed:Wait()
	for i=0x1,#child do
		if child[i].Name == "ButtonSupport" then
			child[i].COLOR.BrickColor = BrickColor.new("Lime green")
		end
	end
	wait(1)
	debounce = false	
end

function close()
	script.Parent.DOOR.Door.Close:Play()
	pos2.CFrame = script.Parent.DOOR.Door.CFrame * CFrame.new(0,-25,0)
	for i=0x1,#child do
		if child[i].Name == "ButtonSupport" then
			child[i].COLOR.BrickColor = BrickColor.new("Gold")
		end
	end
	local tween = TweenService:Create(script.Parent.DOOR.Door, tweenInfo, pos2)
	      tween:Play()
		  tween.Completed:Wait()
	for i=0x1,#child do
		if child[i].Name == "ButtonSupport" then
			child[i].COLOR.BrickColor = BrickColor.new("Lime green")
		end
	end
	wait(1)
	debounce = false
end

script.Parent.Button.ClickDetector.MouseClick:Connect(function()
	if debounce == false then
		debounce = true
		if opened == false then
			opened = true
			open()
		else
			opened = false
			close()
		end
	end
end)


script.Parent.Button2.ClickDetector.MouseClick:Connect(function()
	if debounce == false then
		debounce = true
		if opened == false then
			opened = true
			open()
		else
			opened = false
			close()
		end
	end
end)
