debounce = false
active = false
pending = false
TweenService = game:GetService("TweenService")
ti = TweenInfo.new(6)
local pos = {} --OPEN
local pos2 = {} --CLOSE


function mesh()
	for i=1,5 do
	script.Parent.Mesh.Offset = script.Parent.Mesh.Offset + Vector3.new(0.030,0,0)
	wait()
	end
	for i=1,5 do
	script.Parent.Mesh.Offset = script.Parent.Mesh.Offset - Vector3.new(0.030,0,0)
	wait()
	end
end

script.Parent.CD.MouseClick:connect(function()
	if debounce == false then
		debounce = true
		if active == false then
			active = true
			debounce = true
	script.Parent.Sound:Play()
	--script.Parent.CD.MaxActivationDistance = 0
	mesh()
	script.Parent.BrickColor = BrickColor.new("Bright red")
	pos.CFrame = script.Parent.Parent.BRIDGE.MAIN.CFrame * CFrame.new(0,0,55)
	local tween = TweenService:Create(script.Parent.Parent.BRIDGE.MAIN, ti, pos)
	      tween:Play()
		  tween.Completed:Wait()
	wait(1) --DELAY	
	script.Parent.BrickColor = BrickColor.new("Shamrock")
	debounce = false
	
	
		 else 
			
			active = false
			debounce = true
			script.Parent.Sound:Play()
			--script.Parent.CD.MaxActivationDistance = 0
			mesh()
			script.Parent.BrickColor = BrickColor.new("Bright red")
	pos.CFrame = script.Parent.Parent.BRIDGE.MAIN.CFrame * CFrame.new(0,0,-55)
	local tween = TweenService:Create(script.Parent.Parent.BRIDGE.MAIN, ti, pos)
	      tween:Play()
		  tween.Completed:Wait()		
	wait(1) --DELAY	
	script.Parent.BrickColor = BrickColor.new("Shamrock")
	debounce = false
		 end
	end
end)