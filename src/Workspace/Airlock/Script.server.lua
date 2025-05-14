Button1 = script.Parent.Door1.Open
Button2 = script.Parent.Door1.Open2
Button3 = script.Parent.Door2.Open
Button4 = script.Parent.Door2.Open2
opened = false
running = false
timez = 20
ts = game:GetService("TweenService")
tweeninfo = TweenInfo.new(5)
tweeninfo2 = TweenInfo.new(12)
lights = script.Parent.LIGHTS:GetChildren()
red = Color3.fromRGB(196, 40, 28)
yellow = Color3.fromRGB(245, 205, 48)
green = Color3.fromRGB(0, 255, 0)
pUP = {} -- 10.54 -> 17.54 = 6 Y
pDN = {} -- 3.54 -> -3.06 = -6 Y 
pG1 = {} -- -1.902 -> 16.099 = +18 X
pG2 = {} -- -2.101 -> -20.101 = -18 X

function ccolor(color)
	for i=0x1,#lights do
		lights[i].Color = color
	end
end

----------------------------------------------------------------------
script.Parent.Door1.Open.Touched:connect(function(hum)
	print(opened)

    if opened == false then
	if hum.Parent:FindFirstChild("Humanoid") and hum.Parent:FindFirstChild("Card") then
		opened = true		
			game.Workspace.Airlock.Door1.Open2.ClickDetector.MaxActivationDistance = 0
			game.Workspace.Airlock.Door2.Open.ClickDetector.MaxActivationDistance = 0
    -----------------------------------------------------------------------------------------	
	script.Parent.Door1.Allow.Material = "Neon"
	Button1.Open:Play()
	wait(1)
	script.Parent.Door1.Allow.Material= "SmoothPlastic"
	-----------------------------------------------------------------------------------------
	script.Parent.Door1.Gate1.Sound:Play()
	Button1.BrickColor = BrickColor.new("Really red")
	Button2.BrickColor = BrickColor.new("Really red")
	Button3.BrickColor = BrickColor.new("Really red")
	Button4.BrickColor = BrickColor.new("Really red")
	ccolor(yellow)
	script.Opened.Value = true
	script.Parent.Door1.Smoke1.Smoke.Enabled = true
	script.Parent.Door1.Smoke2.Smoke.Enabled = true
    -------------------
	pG1.CFrame = script.Parent.Door1.Gate1.CFrame * CFrame.new(-18,0,0)
	pG2.CFrame = script.Parent.Door1.Gate2.CFrame * CFrame.new(-18,0,0)
	pUP.CFrame = script.Parent.Door1.Up.CFrame * CFrame.new(0,0,-7)
	pDN.CFrame = script.Parent.Door1.Down.CFrame * CFrame.new(0,0,-7)
	-------------------
	local tween = ts:Create(script.Parent.Door1.Gate1, tweeninfo, pG1)
	local tween2 = ts:Create(script.Parent.Door1.Gate2, tweeninfo, pG2)
	      tween:Play()
	      tween2:Play()
		  tween.Completed:Wait()

    -------------------

	script.Parent.Door1.Smoke1.Smoke.Enabled = false
	script.Parent.Door1.Smoke2.Smoke.Enabled = false
wait(3)

script.Parent.Door1.Up.Open:Play()
    local tween3 = ts:Create(script.Parent.Door1.Up, tweeninfo, pUP)
	local tween4 = ts:Create(script.Parent.Door1.Down, tweeninfo, pDN)
	      tween3:Play()
	      tween4:Play()
		  tween3.Completed:Wait()

ccolor(green)

wait(timez)
ccolor(yellow)
    -------------------
	pG1.CFrame = script.Parent.Door1.Gate1.CFrame * CFrame.new(18,0,0)
	pG2.CFrame = script.Parent.Door1.Gate2.CFrame * CFrame.new(18,0,0)
	pUP.CFrame = script.Parent.Door1.Up.CFrame * CFrame.new(0,0,7)
	pDN.CFrame = script.Parent.Door1.Down.CFrame * CFrame.new(0,0,7)
	-------------------
	
script.Opened.Value = false
script.Parent.Door1.Up.Close:Play()
    local tween5 = ts:Create(script.Parent.Door1.Up, tweeninfo, pUP)
	local tween6 = ts:Create(script.Parent.Door1.Down, tweeninfo, pDN)
	      tween5:Play()
	      tween6:Play()
		  tween5.Completed:Wait()
		
wait(3)
script.Parent.Door1.Gate1.Sound:Play()
    local tween7 = ts:Create(script.Parent.Door1.Gate1, tweeninfo, pG1)
	local tween8 = ts:Create(script.Parent.Door1.Gate2, tweeninfo, pG2)
	      tween7:Play()
	      tween8:Play()
		  tween7.Completed:Wait()
wait(2)
ccolor(green)
    Button1.BrickColor = BrickColor.new("Dark green")
	Button2.BrickColor = BrickColor.new("Dark green")
	Button3.BrickColor = BrickColor.new("Dark green")
	Button4.BrickColor = BrickColor.new("Dark green")
			game.Workspace.Airlock.Door1.Open2.ClickDetector.MaxActivationDistance = 30
			game.Workspace.Airlock.Door2.Open.ClickDetector.MaxActivationDistance = 30
			wait(2)
		opened = false
	end
elseif opened == true and script.Opened.Value == true then
		if hum.Parent:FindFirstChild("Humanoid") and hum.Parent:FindFirstChild("Card") then
		if Button1.Deny.Playing == false then
			Button1.Deny:Play()
		end
		script.Parent.Door1.Deny.Material = "Neon"
	    wait(1)
	    script.Parent.Door1.Deny.Material= "SmoothPlastic"
		end
	end
end)
----------------------------------------------------------------------
script.Parent.Door1.Open2.ClickDetector.MouseClick:Connect(function()
			if opened == false then
			opened = true
			game.Workspace.Airlock.Door1.Open2.ClickDetector.MaxActivationDistance = 0
			game.Workspace.Airlock.Door2.Open.ClickDetector.MaxActivationDistance = 0
	Button1.BrickColor = BrickColor.new("Really red")
	Button2.BrickColor = BrickColor.new("Really red")
	Button3.BrickColor = BrickColor.new("Really red")
	Button4.BrickColor = BrickColor.new("Really red")
	script.Ready.Value = false
	ccolor(red)
	script.Parent.Vent.Smoke.Enabled = true
	script.Parent.Vent2.Smoke.Enabled = true
	script.Parent.Vent.Sound:Play()
	script.Parent.Vent.Script.Disabled = false
	script.Parent.Vent2.Script.Disabled = false
	for i=1,90 do
		script.Parent.Laser:SetPrimaryPartCFrame(script.Parent.Laser.PrimaryPart.CFrame * CFrame.new(0,0,0.2))
		wait()
	end
	for i=1,90 do
		script.Parent.Laser:SetPrimaryPartCFrame(script.Parent.Laser.PrimaryPart.CFrame * CFrame.new(0,0,-0.2))
		wait()
	end
	script.Parent.Vent.Script.Disabled = true
	script.Parent.Vent2.Script.Disabled = true
	script.Parent.Vent.Smoke.Enabled = false
	script.Parent.Vent2.Smoke.Enabled = false
	
	script.Parent.Door1.Gate1.Sound:Play()
	script.Ready.Value = true
	script.Opened.Value = true
	script.Parent.Door1.Smoke1.Smoke.Enabled = true
	script.Parent.Door1.Smoke2.Smoke.Enabled = true
	ccolor(yellow)
    -------------------
	pG1.CFrame = script.Parent.Door1.Gate1.CFrame * CFrame.new(-18,0,0)
	pG2.CFrame = script.Parent.Door1.Gate2.CFrame * CFrame.new(-18,0,0)
	pUP.CFrame = script.Parent.Door1.Up.CFrame * CFrame.new(0,0,-7)
	pDN.CFrame = script.Parent.Door1.Down.CFrame * CFrame.new(0,0,-7)
	-------------------
	local tween = ts:Create(script.Parent.Door1.Gate1, tweeninfo, pG1)
	local tween2 = ts:Create(script.Parent.Door1.Gate2, tweeninfo, pG2)
	      tween:Play()
	      tween2:Play()
		  tween.Completed:Wait()

    -------------------

	script.Parent.Door1.Smoke1.Smoke.Enabled = false
	script.Parent.Door1.Smoke2.Smoke.Enabled = false
wait(3)
script.Parent.Door1.Up.Open:Play()
    local tween3 = ts:Create(script.Parent.Door1.Up, tweeninfo, pUP)
	local tween4 = ts:Create(script.Parent.Door1.Down, tweeninfo, pDN)
	      tween3:Play()
	      tween4:Play()
		  tween3.Completed:Wait()
ccolor(green)
wait(timez)
ccolor(yellow)
    -------------------
	pG1.CFrame = script.Parent.Door1.Gate1.CFrame * CFrame.new(18,0,0)
	pG2.CFrame = script.Parent.Door1.Gate2.CFrame * CFrame.new(18,0,0)
	pUP.CFrame = script.Parent.Door1.Up.CFrame * CFrame.new(0,0,7)
	pDN.CFrame = script.Parent.Door1.Down.CFrame * CFrame.new(0,0,7)
	-------------------
	
script.Opened.Value = false
script.Parent.Door1.Up.Close:Play()
    local tween5 = ts:Create(script.Parent.Door1.Up, tweeninfo, pUP)
	local tween6 = ts:Create(script.Parent.Door1.Down, tweeninfo, pDN)
	      tween5:Play()
	      tween6:Play()
		  tween5.Completed:Wait()
wait(3)
script.Parent.Door1.Gate1.Sound:Play()
    local tween7 = ts:Create(script.Parent.Door1.Gate1, tweeninfo, pG1)
	local tween8 = ts:Create(script.Parent.Door1.Gate2, tweeninfo, pG2)
	      tween7:Play()
	      tween8:Play()
		  tween7.Completed:Wait()
wait(2)
ccolor(green)
Button1.BrickColor = BrickColor.new("Dark green")
	Button2.BrickColor = BrickColor.new("Dark green")
	Button3.BrickColor = BrickColor.new("Dark green")
	Button4.BrickColor = BrickColor.new("Dark green")
			game.Workspace.Airlock.Door1.Open2.ClickDetector.MaxActivationDistance = 30
			game.Workspace.Airlock.Door2.Open.ClickDetector.MaxActivationDistance = 30
		wait(2)
		opened = false
		end
end)


----------------------------------------------------------------------

script.Parent.Door2.Open.ClickDetector.MouseClick:Connect(function()
	
		if opened == false then
			opened = true
			game.Workspace.Airlock.Door1.Open2.ClickDetector.MaxActivationDistance = 0
			game.Workspace.Airlock.Door2.Open.ClickDetector.MaxActivationDistance = 0
	-----------------------------------------------------------------------------------------
	Button1.BrickColor = BrickColor.new("Really red")
	Button2.BrickColor = BrickColor.new("Really red")
	Button3.BrickColor = BrickColor.new("Really red")
	Button4.BrickColor = BrickColor.new("Really red")
	script.Ready.Value = false
	script.Parent.Vent.Smoke.Enabled = true
	script.Parent.Vent2.Smoke.Enabled = true
	script.Parent.Vent.Sound:Play()
	script.Parent.Vent.Script.Disabled = false
	script.Parent.Vent2.Script.Disabled = false
	ccolor(red)
	for i=1,90 do
		script.Parent.Laser:SetPrimaryPartCFrame(script.Parent.Laser.PrimaryPart.CFrame * CFrame.new(0,0,0.2))
		wait()
	end
	for i=1,90 do
		script.Parent.Laser:SetPrimaryPartCFrame(script.Parent.Laser.PrimaryPart.CFrame * CFrame.new(0,0,-0.2))
		wait()
	end
	script.Parent.Vent.Script.Disabled = true
	script.Parent.Vent2.Script.Disabled = true
	script.Parent.Vent.Smoke.Enabled = false
	script.Parent.Vent2.Smoke.Enabled = false
	script.Parent.Door2.Gate1.Sound:Play()
	script.Ready.Value = true
	script.Opened.Value = true
	script.Parent.Door2.Smoke1.Smoke.Enabled = true
	script.Parent.Door2.Smoke2.Smoke.Enabled = true
	ccolor(yellow)
    -------------------
	pG1.CFrame = script.Parent.Door2.Gate1.CFrame * CFrame.new(-18,0,0)
	pG2.CFrame = script.Parent.Door2.Gate2.CFrame * CFrame.new(-18,0,0)
	pUP.CFrame = script.Parent.Door2.Up.CFrame * CFrame.new(0,0,-7)
	pDN.CFrame = script.Parent.Door2.Down.CFrame * CFrame.new(0,0,-7)
	-------------------
	local tween = ts:Create(script.Parent.Door2.Gate1, tweeninfo, pG1)
	local tween2 = ts:Create(script.Parent.Door2.Gate2, tweeninfo, pG2)
	      tween:Play()
	      tween2:Play()
		  tween.Completed:Wait()

    -------------------
	script.Parent.Door2.Smoke1.Smoke.Enabled = false
	script.Parent.Door2.Smoke2.Smoke.Enabled = false
wait(3)
script.Parent.Door2.Up.Open:Play()
    local tween3 = ts:Create(script.Parent.Door2.Up, tweeninfo, pUP)
	local tween4 = ts:Create(script.Parent.Door2.Down, tweeninfo, pDN)
	      tween3:Play()
	      tween4:Play()
		  tween3.Completed:Wait()
ccolor(green)
wait(timez)
ccolor(yellow)
    -------------------
	pG1.CFrame = script.Parent.Door2.Gate1.CFrame * CFrame.new(18,0,0)
	pG2.CFrame = script.Parent.Door2.Gate2.CFrame * CFrame.new(18,0,0)
	pUP.CFrame = script.Parent.Door2.Up.CFrame * CFrame.new(0,0,7)
	pDN.CFrame = script.Parent.Door2.Down.CFrame * CFrame.new(0,0,7)
	-------------------
	
script.Opened.Value = false
script.Parent.Door2.Up.Close:Play()
    local tween5 = ts:Create(script.Parent.Door2.Up, tweeninfo, pUP)
	local tween6 = ts:Create(script.Parent.Door2.Down, tweeninfo, pDN)
	      tween5:Play()
	      tween6:Play()
		  tween5.Completed:Wait()
wait(3)
script.Parent.Door2.Gate1.Sound:Play()
    local tween7 = ts:Create(script.Parent.Door2.Gate1, tweeninfo, pG1)
	local tween8 = ts:Create(script.Parent.Door2.Gate2, tweeninfo, pG2)
	      tween7:Play()
	      tween8:Play()
		  tween7.Completed:Wait()
wait(2)
Button1.BrickColor = BrickColor.new("Dark green")
	Button2.BrickColor = BrickColor.new("Dark green")
	Button3.BrickColor = BrickColor.new("Dark green")
	Button4.BrickColor = BrickColor.new("Dark green")
	ccolor(green)
			game.Workspace.Airlock.Door1.Open2.ClickDetector.MaxActivationDistance = 30
			game.Workspace.Airlock.Door2.Open.ClickDetector.MaxActivationDistance = 30
		wait(2)
opened = false
end
end)

----------------------------------------------------------------------

script.Parent.Door2.Open2.Touched:connect(function(hum)
	print(opened)
	if opened == false then
	if hum.Parent:FindFirstChild("Humanoid") and hum.Parent:FindFirstChild("Card") then
			game.Workspace.Airlock.Door1.Open2.ClickDetector.MaxActivationDistance = 0
			game.Workspace.Airlock.Door2.Open.ClickDetector.MaxActivationDistance = 0
	    opened = true		
    -----------------------------------------------------------------------------------------	

	script.Parent.Door2.Allow.Material = "Neon"
	Button4.Open:Play()
	wait(1)
	ccolor(yellow)
	script.Parent.Door2.Allow.Material= "SmoothPlastic"
	script.Parent.Door2.Gate1.Sound:Play()
	Button1.BrickColor = BrickColor.new("Really red")
	Button2.BrickColor = BrickColor.new("Really red")
	Button3.BrickColor = BrickColor.new("Really red")
	Button4.BrickColor = BrickColor.new("Really red")
	script.Opened.Value = true
    script.Parent.Door2.Smoke1.Smoke.Enabled = true
	script.Parent.Door2.Smoke2.Smoke.Enabled = true
    -------------------
	pG1.CFrame = script.Parent.Door2.Gate1.CFrame * CFrame.new(-18,0,0)
	pG2.CFrame = script.Parent.Door2.Gate2.CFrame * CFrame.new(-18,0,0)
	pUP.CFrame = script.Parent.Door2.Up.CFrame * CFrame.new(0,0,-7)
	pDN.CFrame = script.Parent.Door2.Down.CFrame * CFrame.new(0,0,-7)
	-------------------
	local tween = ts:Create(script.Parent.Door2.Gate1, tweeninfo, pG1)
	local tween2 = ts:Create(script.Parent.Door2.Gate2, tweeninfo, pG2)
	      tween:Play()
	      tween2:Play()
		  tween.Completed:Wait()

    -------------------
	script.Parent.Door2.Smoke1.Smoke.Enabled = false
	script.Parent.Door2.Smoke2.Smoke.Enabled = false
wait(3)
script.Parent.Door2.Up.Open:Play()
    local tween3 = ts:Create(script.Parent.Door2.Up, tweeninfo, pUP)
	local tween4 = ts:Create(script.Parent.Door2.Down, tweeninfo, pDN)
	      tween3:Play()
	      tween4:Play()
		  tween3.Completed:Wait()
ccolor(green)
wait(timez)
ccolor(yellow)
    -------------------
	pG1.CFrame = script.Parent.Door2.Gate1.CFrame * CFrame.new(18,0,0)
	pG2.CFrame = script.Parent.Door2.Gate2.CFrame * CFrame.new(18,0,0)
	pUP.CFrame = script.Parent.Door2.Up.CFrame * CFrame.new(0,0,7)
	pDN.CFrame = script.Parent.Door2.Down.CFrame * CFrame.new(0,0,7)
	-------------------
	
script.Opened.Value = false
script.Parent.Door2.Up.Close:Play()
    local tween5 = ts:Create(script.Parent.Door2.Up, tweeninfo, pUP)
	local tween6 = ts:Create(script.Parent.Door2.Down, tweeninfo, pDN)
	      tween5:Play()
	      tween6:Play()
		  tween5.Completed:Wait()
wait(3)
script.Parent.Door2.Gate1.Sound:Play()
    local tween7 = ts:Create(script.Parent.Door2.Gate1, tweeninfo, pG1)
	local tween8 = ts:Create(script.Parent.Door2.Gate2, tweeninfo, pG2)
	      tween7:Play()
	      tween8:Play()
		  tween7.Completed:Wait()
wait(2)
Button1.BrickColor = BrickColor.new("Dark green")
	Button2.BrickColor = BrickColor.new("Dark green")
	Button3.BrickColor = BrickColor.new("Dark green")
	Button4.BrickColor = BrickColor.new("Dark green")
	ccolor(green)
			game.Workspace.Airlock.Door1.Open2.ClickDetector.MaxActivationDistance = 30
			game.Workspace.Airlock.Door2.Open.ClickDetector.MaxActivationDistance = 30
		wait(2)
		opened = false
	    end
	elseif opened == true and script.Opened.Value == true then
		if hum.Parent:FindFirstChild("Humanoid") and hum.Parent:FindFirstChild("Card") then
		if Button4.Deny.Playing == false then
			Button4.Deny:Play()
		end
		script.Parent.Door2.Deny.Material = "Neon"
	    wait(1)
	    script.Parent.Door2.Deny.Material= "SmoothPlastic"
		end
	end
end)