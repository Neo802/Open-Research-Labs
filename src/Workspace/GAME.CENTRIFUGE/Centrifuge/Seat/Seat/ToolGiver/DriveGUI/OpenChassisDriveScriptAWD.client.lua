
wait(0.5)
---VARIABLES---------------------------------------
local GUIMain 	= script.Parent
local player 	= game.Players.LocalPlayer
local charac 	= player.Character
local mouse 	= player:GetMouse()
local cam		= game.Workspace.CurrentCamera
local car 		= GUIMain.Car.Value
local carSeat	= car
local UIS = game:GetService("UserInputService")
local buttons	= GUIMain.Background.OtherButtons
local speedfrm	= GUIMain.Background.SpeedFrame
local camType = 1

local velocity = 0
cam.CameraType = "Track"


function change()
	if camType == 1 then		
		cam.CameraType = "Attach"
		camType = 2                      					
	elseif camType == 2 then	-- Switch to Follow car cam.     					
		cam.CameraType = "Track"
		camType = 1 										
	end	
end

UIS.InputBegan:connect(function(input, processed)
	if input.UserInputType == Enum.UserInputType.Gamepad1 then
		if input.KeyCode == Enum.KeyCode.ButtonY then
		    change()
		end
	end
end)

buttons.Cam.MouseButton1Click:connect(function()
		change()								  	
end)

UIS.GamepadConnected:connect(function(gamepad)
	script.Parent.Background.OtherButtons.Cam.Visible = false
	script.Parent.Background.OtherButtons.XboxY.Visible = true
end)

UIS.GamepadDisconnected:connect(function(gamepad)
	script.Parent.Background.OtherButtons.Cam.Visible = true
	script.Parent.Background.OtherButtons.XboxY.Visible = false
end)

if UIS.GamepadEnabled then
	script.Parent.Background.OtherButtons.Cam.Visible = false
	script.Parent.Background.OtherButtons.XboxY.Visible = true
else
	script.Parent.Background.OtherButtons.Cam.Visible = true
	script.Parent.Background.OtherButtons.XboxY.Visible = false
end



function Main()
	velocity = math.floor(carSeat.Velocity.magnitude+0.5)
	speedfrm.SpeedBackground.Indicator.Number.Text = velocity
	if 1-(velocity/200) >= 0 then
		speedfrm.SpeedBackground.Indicator.Position = UDim2.new(velocity/200,0,0,1)
	end
end

while wait(0.1) do
	if (not pcall(function() Main() end)) then
		cam.CameraType = "Custom"
		cam.CameraSubject = charac.Humanoid
		break
	elseif (GUIMain.Car.Value == nil) then
		cam.CameraType = "Custom"
		cam.CameraSubject = charac.Humanoid
		break
	end
end