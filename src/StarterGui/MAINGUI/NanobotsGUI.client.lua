local localplayer = game.Players.LocalPlayer
local strings = {"Repairing the facility...",
	"We are making your life better...",
	"Next time protect the reactor core, please...",
	"Why we should regenerate the facility?...",
    "Aw come on, why us?..."}

game.ReplicatedStorage.NanobotsGUI.OnClientEvent:Connect(function(fct)
	if game.Workspace.CurrentCamera:FindFirstChild("NANOBLUR") == nil then
	local blur = Instance.new("BlurEffect")
    blur.Parent = game.Workspace.CurrentCamera
    blur.Name = "NANOBLUR"
    blur.Enabled = false 
    end

	if fct == 1 then
		script.Parent.NANOBOTS.Visible = true
		script.Parent.NANOBOTS.BOX.Text = strings[math.random(1,#strings)]
		game.Workspace.CurrentCamera:FindFirstChild("NANOBLUR").Enabled = true
		
		for i=1,50 do
		game.Workspace.CurrentCamera:FindFirstChild("NANOBLUR").Size = game.Workspace.CurrentCamera:FindFirstChild("NANOBLUR").Size + 0.5
		wait()
		end
	elseif fct == 0	then
		local Humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
		game.Workspace.CurrentCamera.FieldOfView = 70
	    game.Workspace.CurrentCamera.CameraSubject = Humanoid
	    game.Workspace.CurrentCamera.CameraType = "Custom"
		--game.Workspace:FindFirstChild(localplayer.Name).Head:Remove()
		script.Parent.NANOBOTS.Visible = false
		if script.Parent.Parent:FindFirstChild("CamShaker") then
			script.Parent.Parent:FindFirstChild("CamShaker").Disabled = true
		end
		for i=1,50 do
		game.Workspace.CurrentCamera:FindFirstChild("NANOBLUR").Size = game.Workspace.CurrentCamera:FindFirstChild("NANOBLUR").Size - 0.5
		wait()
		end
		
	    if script.Parent.Parent:FindFirstChild("CamShaker") then
			script.Parent.Parent:FindFirstChild("CamShaker").Disabled = false
	    end
	    --game.ReplicatedStorage.Money:FireServer(localplayer,5,"participating at a nuclear disaster")
		game.Workspace.CurrentCamera:FindFirstChild("NANOBLUR"):remove()
	end
end)