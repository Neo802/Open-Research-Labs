local camera = game.Workspace.CurrentCamera
local sec = game.Workspace["GAME.SECURITY.CAMS"]
local camno = 1
local cammax = #game.Workspace["GAME.SECURITY.CAMS"]:GetChildren()
local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
local UIS = game:GetService("UserInputService")

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", false) -- i hate bugs so

print(cammax)

script.Parent.CAM.Visible = true
camera.CameraType = Enum.CameraType.Track
camera.CameraSubject = sec["Cam"..camno]--.CFrame * CFrame.Angles(0,0,0)
script.Parent.CAM.CAM.Text = "#"..camno


function descend()
	script.Parent.CAM.WARN.Visible = false
	if camno >= 1 and camno <= cammax then
		camno = camno - 1
		camera.CameraSubject = sec["Cam"..camno]--.CFrame * CFrame.Angles(0,0,0)
	elseif camno > cammax then
		camno = 1 
		camera.CameraSubject = sec["Cam"..camno]--.CFrame * CFrame.Angles(0,0,0)
	elseif camno < 1 then
		camno = cammax 
		camera.CameraSubject = sec["Cam"..camno]--.CFrame * CFrame.Angles(0,0,0)	
	end 
	script.Parent.CAM.CAM.Text = "#"..camno
end

function ascend()
	script.Parent.CAM.WARN.Visible = false
	if camno >= 1 and camno <= cammax then
		camno = camno + 1
		camera.CameraSubject = sec["Cam"..camno]--.CFrame * CFrame.Angles(0,0,0)
	elseif camno > cammax then
		camno = 1 
		camera.CameraSubject = sec["Cam"..camno]--.CFrame * CFrame.Angles(0,0,0)
	elseif camno < 1 then
		camno = cammax 
		camera.CameraSubject = sec["Cam"..camno]
	end 	
	script.Parent.CAM.CAM.Text = "#"..camno
end

function ex()
	camera.CameraType = "Custom"
	camera.FieldOfView = 70
	camera.CameraSubject = humanoid
    script.Parent.CAM.WARN.Visible = true
    script.Parent.CAM.CAM.Text = "OFF"
end

script.Parent.CAM.N.MouseButton1Click:Connect(function()
ascend()
end)

script.Parent.CAM.E.MouseButton1Click:Connect(function()
ex()
end)

script.Parent.CAM.B.MouseButton1Click:Connect(function()
	descend()
end)


UIS.InputBegan:connect(function(input, processed)
	if input.UserInputType == Enum.UserInputType.Gamepad1 then
		if input.KeyCode == Enum.KeyCode.ButtonL1 then
		    descend()
		end
		if input.KeyCode == Enum.KeyCode.ButtonR1 then
		    ascend()
		end
		if input.KeyCode == Enum.KeyCode.ButtonB then
		    ex()
		end
	end
end)



while wait(0.1) do
	if (script.Parent.CamACT.Value == false) then
		camera.CameraType = "Custom"
		camera.CameraSubject = humanoid
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)	
	    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
		break
	end
end
