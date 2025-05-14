active = false
debounce = false
rocket = script.Parent.Parent.ROCKET
local TweenService = game:GetService("TweenService")
local pos = {} --DOOR2
local pos2 = {} --DOOR
local posc = {}
local posc2 = {}

local posclap = {}
local posclap2 = {}

pos.CFrame = script.Parent.Parent.DOOR2.CFrame * CFrame.new(0,0,-28)
posc.CFrame = script.Parent.Parent.DOOR2.CFrame * CFrame.new(0,0,28)

pos2.CFrame = script.Parent.Parent.DOOR.CFrame * CFrame.new(0,0,28)
posc2.CFrame = script.Parent.Parent.DOOR.CFrame * CFrame.new(0,0,-28)

posclap.CFrame = script.Parent.Parent.Clap.MOTOR.CFrame * CFrame.Angles(-7.8,0,0)
posclap2.CFrame = script.Parent.Parent.Clap.MOTOR.CFrame * CFrame.Angles(3.9,0,0)

local tweenInfo = TweenInfo.new(15)
local tweenInfo2 = TweenInfo.new(2,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)

script.Parent.ClickDetector.MouseClick:Connect(function()
if game.Workspace["MAIN.VALUES"].MELTDOWN.Value == false and game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value == false then	
	if active == false then
		if debounce == false then
			debounce = true
		script.Parent.Sound:Play()
	script.Parent.ClickDetector.MaxActivationDistance = 0
	script.Parent.Mesh.Offset = Vector3.new(0, -0.3, 0)
    wait(0.5)
    script.Parent.Mesh.Offset = Vector3.new(0, 0, 0)
	
	local tween = TweenService:Create(script.Parent.Parent.Clap.MOTOR, tweenInfo2, posclap)
	      tween:Play()
		  tween.Completed:Wait()
	game.Workspace["GAME.MISSILE"].SurfaceGui.Frame.TL.Text = "ACTIVATE IT AT CONTROL ROOM"
	game.Workspace["GAME.MISSILE2"].SurfaceGui.Frame.TL.Text = "ACTIVATE IT AT CONTROL ROOM"
	script.Parent.Parent.Button2.ClickDetector.MaxActivationDistance = 32
	active = true
	debounce = false
		end
	end
end
end)

script.Parent.Parent.Button2.ClickDetector.MouseClick:connect(function()
if game.Workspace["MAIN.VALUES"].MELTDOWN.Value == false and game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value == false then	
	if active == true then
		if debounce == false then
			debounce = true
	script.Parent.Parent.Button2.Sound:Play()
	script.Parent.Parent.Button2.ClickDetector.MaxActivationDistance = 0
	script.Parent.Mesh.Offset = Vector3.new(0, -0.3, 0)
    wait(0.5)
    script.Parent.Mesh.Offset = Vector3.new(0, 0, 0)
	
	rocket.MAIN.ROCKET.Alarm:Play()
		game.Workspace["GAME.MISSILE"].SurfaceGui.Frame.TL.Text = "PENDING..."
	game.Workspace["GAME.MISSILE2"].SurfaceGui.Frame.TL.Text = "PENDING..."
	local tween = TweenService:Create(script.Parent.Parent.DOOR2, tweenInfo, pos)
	      tween:Play()
	local tween2 = TweenService:Create(script.Parent.Parent.DOOR, tweenInfo, pos2)
	      tween2:Play()
		  tween.Completed:Wait()
	wait(15)
	rocket.MAIN.ROCKET.Alarm:Stop()
	rocket.MAIN.ROCKET.Count:Play()
	for i = 10,0,-1 do
		if i == 4 then
			rocket.MAIN.Smoke.Smoke.Enabled = true
		end
		game.Workspace["GAME.MISSILE"].SurfaceGui.Frame.TL.Text = i
		game.Workspace["GAME.MISSILE2"].SurfaceGui.Frame.TL.Text = i
		wait(1)
	end
	rocket.MAIN.ROCKET.Count:Stop()
	rocket.MAIN.ROCKET.RocketSound:Play()
	game.Workspace["GAME.MISSILE"].SurfaceGui.Frame.TL.Text = "IGNITION"
    game.Workspace["GAME.MISSILE2"].SurfaceGui.Frame.TL.Text = "IGNITION"
	rocket.MAIN.Smoke.Fire.Enabled = true
	rocket.MAIN.ROCKET.Flame.Enabled = true
	wait(1)
	game.Workspace["GAME.MISSILE"].SurfaceGui.Frame.TL.Text = "LAUNCHED"
    game.Workspace["GAME.MISSILE2"].SurfaceGui.Frame.TL.Text = "LAUNCHED"
	for i=1,500 do
	rocket.MAIN.ROCKET.BodyVelocity.Velocity = Vector3.new(0,i,0)
	wait(0.2)
	end
	local tween3 = TweenService:Create(script.Parent.Parent.DOOR2, tweenInfo, posc)
	      tween3:Play()
	local tween4 = TweenService:Create(script.Parent.Parent.DOOR, tweenInfo, posc2)
	      tween4:Play()
		  tween3.Completed:Wait()
		    end
		end
end
end)