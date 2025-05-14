Code = "04261986" -- https://en.wikipedia.org/wiki/Chernobyl_disaster
button = script.Parent.Parent.Enter
buttonchild = script.Parent.Parent.Frame:GetChildren()
CORE = script.Parent.Parent.Parent.Parent.Parent.Parent
LIFTLIGHTS = game.Workspace.CoreLiftyLights
LIFTCHILD = LIFTLIGHTS:GetChildren()
local module = require(game.ReplicatedStorage.API)
local codetext = module.DeclinedStrings
local debounce = false
button.MouseButton1Click:connect(function()
	if (script.Parent.Text == Code) then
		print("Accepted")
		script.Parent.Text = "GRANTED"
		script.Parent.Parent.Parent.Parent.Sound2:play()
		wait(0.5)
		script.Parent.Text = ""

		script.Parent.Parent.Parent.Enabled = false
		script.Parent.Parent.Parent.Parent.Parent.Parent.Core.MainframeLift:Play()
		CORE.KEYPADS.KeyPad2.SurfaceGui.Frame.SCREEN.Script.Disabled = true
		for i=1,20 do
			CORE:SetPrimaryPartCFrame(CORE.PrimaryPart.CFrame * CFrame.new(0, 0.5, 0))
			wait()
		end
		script.Parent.Parent.Parent.Parent.Parent.Parent.Core.MainframeLift.TimePosition = 8
		wait(3)
		CORE.KEYPADS.KeyPad4.SurfaceGui.Enabled = true
		CORE.KEYPADS.KeyPad4.SurfaceGui.Frame.SCREEN.Script.Disabled = false
		--------------------------------------------------------------------
		for i=0x1,#LIFTCHILD do
			LIFTCHILD[i].Color = Color3.fromRGB(52, 176, 7)
		end
		--------------------------------------------------------------------
		CORE.KEYPADS.KeyPad4.SurfaceGui.Startup.Visible = true
		CORE.KEYPADS.KeyPad4.SurfaceGui.Startup.Startup1.Visible = true
		wait(1)
		CORE.KEYPADS.KeyPad4.SurfaceGui.Startup.Startup1.Visible = false
		CORE.KEYPADS.KeyPad4.SurfaceGui.Startup.Startup2.Visible = true
		wait(1)
		CORE.KEYPADS.KeyPad4.SurfaceGui.Startup.Visible = false
		CORE.KEYPADS.KeyPad4.SurfaceGui.Startup.Startup1.Visible = true
		CORE.KEYPADS.KeyPad4.SurfaceGui.Startup.Startup2.Visible = false
		--------------------------------------------------------------------
		CORE.KEYPADS.KeyPad4.SurfaceGui.Frame.Visible = true
		--------------------------------------------------------------------
		for i=8,1,-1 do
			wait(3)
			LIFTLIGHTS["Light"..i].Color = Color3.fromRGB(0, 16, 176)
		end
		--------------------------------------------------------------------
		CORE.KEYPADS.KeyPad4.SurfaceGui.Enabled = false
		CORE.KEYPADS.KeyPad4.SurfaceGui.Frame.Visible = false
		wait(2)
		for i=1,88 do
			CORE:SetPrimaryPartCFrame(CORE.PrimaryPart.CFrame * CFrame.new(0, -0.5, 0))
			wait()
		end
		CORE.KEYPADS.KeyPad4.SurfaceGui.Frame.SCREEN.Script.Disabled = true
		CORE.Parent.KeyPad.SurfaceGui.Enabled = true
		CORE.Parent.KeyPad.SurfaceGui.Frame.SCREEN.Script.Disabled = false

		return end
	if debounce == false then
		debounce = true
		script.Parent.Text = codetext[math.random(1,#codetext)]
		for i=0x1,#LIFTCHILD do
			LIFTCHILD[i].Color = Color3.fromRGB(255, 37, 37)
		end
		script.Parent.Parent.Parent.Parent.Sound3:play()
		wait(0.5)
		for i=0x1,#LIFTCHILD do
			LIFTCHILD[i].Color = Color3.fromRGB(0, 16, 176)
		end
		script.Parent.Text = ""
		wait(2)
		debounce = false
	end
end)

for i,v in pairs(buttonchild) do
	if v:IsA("TextButton") then
		v.MouseButton1Click:connect(function()
			script.Parent.Parent.Parent.Parent.Sound:play()
			script.Parent.Text = script.Parent.Text..v.Text
		end)
	end
end

script.Parent.Parent.Clear.MouseButton1Click:connect(function()
	script.Parent.Parent.Parent.Parent.Sound4:play()
	script.Parent.Text = "CLEARED"
	wait(1)
	script.Parent.Text = ""
end)

script.Parent.Parent.Back.MouseButton1Click:connect(function()
	script.Parent.Parent.Parent.Parent.Sound:Play()
	script.Parent.Text = string.sub(script.Parent.Text,1,#script.Parent.Text-1)
	wait()
end)