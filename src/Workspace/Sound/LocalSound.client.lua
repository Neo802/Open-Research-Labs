--This local script will run only for the player whos character it is in. It's changes to the sounds will replicate as they are changes to the character.
-- util

function waitForChild(parent, childName)
	local child = parent:findFirstChild(childName)
	if child then return child end
	while true do
		child = parent.ChildAdded:wait()
		if child.Name==childName then return child end
	end
end


-- declarations

local Figure = script.Parent.Parent
local Head = waitForChild(Figure, "Head")
local Humanoid = waitForChild(Figure, "Humanoid")

local sGettingUp = waitForChild(Head, "GettingUp")
local sDied = waitForChild(Head, "Died") 
local sFreeFalling = waitForChild(Head, "FreeFalling")
local sJumping = waitForChild(Head, "Jumping")
local sLanding = waitForChild(Head, "Landing")
local sSplash = waitForChild(Head, "Splash")
local sRunning = waitForChild(Head, "Running")
sRunning.Looped = true
local sSwimming = waitForChild(Head, "Swimming")
sSwimming.Looped = true
local sClimbing =waitForChild(Head, "Climbing")
sClimbing.Looped = true

local prevState = "None"

-- functions

function onDied()
	stopLoopedSounds()
	sDied:Play()
end

local fallCount = 0
local fallSpeed = 0
function onStateFall(state, sound)
	fallCount = fallCount + 1
	if state then
		sound.Volume = 0
		sound:Play()
		Spawn( function()
			local t = 0
			local thisFall = fallCount
			while t < 1.5 and fallCount == thisFall do
				local vol = math.max(t - 0.3 , 0)
				sound.Volume = vol
				wait(0.1)
				t = t + 0.1
			end
		end)
	else
		sound:Stop()
	end
	fallSpeed = math.max(fallSpeed, math.abs(Head.Velocity.Y))
end


function onStateNoStop(state, sound)
	if state then
		sound:Play()
	end
end


function onRunning(speed)
	sClimbing:Stop()
	sSwimming:Stop()
	if (prevState == "FreeFall" and fallSpeed > 0.1) then
		local vol = math.min(1.0, math.max(0.0, (fallSpeed - 50) / 110))
		sLanding.Volume = vol
		sLanding:Play()
		fallSpeed = 0
	end
	if speed>0.5 then
		sRunning:Resume()
		sRunning.Pitch = speed / 8.0
	else
		sRunning:Pause()
	end
	prevState = "Run"
end

function onSwimming(speed)
	if (prevState ~= "Swim" and speed > 0.1) then
		local volume = math.min(1.0, speed / 350)
		sSplash.Volume = volume
		sSplash:Play()
		prevState = "Swim"
	end
	sClimbing:Stop()
	sRunning:Stop()
	sSwimming.Pitch = 1.6
	sSwimming:Resume()
end

function onClimbing(speed)
	sRunning:Stop()
	sSwimming:Stop()	
	if speed>0.01 then
		sClimbing:Resume()
		sClimbing.Pitch = speed / 5.5
	else
		sClimbing:Pause()
	end
	prevState = "Climb"
end
-- connect up

function stopLoopedSounds()
	sRunning:Stop() 
	sClimbing:Stop()
	sSwimming:Stop()
end

Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Swimming:connect(onSwimming)
Humanoid.Climbing:connect(onClimbing)
Humanoid.Jumping:connect(function(state) onStateNoStop(state, sJumping) prevState = "Jump" end)
Humanoid.GettingUp:connect(function(state) stopLoopedSounds() onStateNoStop(state, sGettingUp) prevState = "GetUp" end)
Humanoid.FreeFalling:connect(function(state) stopLoopedSounds() onStateFall(state, sFreeFalling) prevState = "FreeFall" end)
Humanoid.FallingDown:connect(function(state) stopLoopedSounds() end)
Humanoid.StateChanged:connect(function(old, new) 
	if not (new.Name == "Dead" or 
			new.Name == "Running" or 
			new.Name == "RunningNoPhysics" or 
			new.Name == "Swimming" or 
			new.Name == "Jumping" or 
			new.Name == "GettingUp" or 
			new.Name == "Freefall" or 
			new.Name == "FallingDown") then
		stopLoopedSounds()
	end
end)

