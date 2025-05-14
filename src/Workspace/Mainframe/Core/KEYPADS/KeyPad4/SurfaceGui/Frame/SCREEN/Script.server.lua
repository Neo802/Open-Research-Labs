Code = "05282025" -- Will be remembered as the day the game became open source
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

		for i=0x1,#LIFTCHILD do
			LIFTCHILD[i].Color = Color3.fromRGB(255,255,255)
		end
		CORE.KEYPADS.KeyPad3.SurfaceGui.Frame.SCREEN.Script.Disabled = true
		script.Parent.Parent.Visible = false
		wait(1)
		script.Parent.Parent.Parent.OPTIONS.Visible = true
		script.Parent.Parent.Parent.OPTIONS.SCREEN.Script.Disabled = false


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