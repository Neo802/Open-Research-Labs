local textstrings = {
	"Research Labs is compatible with 8K.",
	"Research Labs was archived in 2021.",
	"Research Labs was restored on 3rd February 2018.",
	"Research Labs was created by one person, iGCEL.",
	"Research Labs was released on 28th May 2016.",
}

local greetings = {
	"Hello!",
	"Enjoy!",
	"Welcome!",
	"Welcome to the Research Labs.",
}

local images = {
	2915770803,
	2915771420,
	2915772051,
	2915772959,
	2915774344,
	2915775203,
	2915775749
}
local Debris = game:GetService("Debris")
local mp = game:GetService("MarketplaceService")
local UIS = game:GetService("UserInputService")

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
local graphics = 1
local newgame = 0
local Loading = {}
count = 0
local assets = game.ReplicatedStorage.Assets
local gui = script.Parent.INTRO.LOADING
gui.ImageLabel.Image = "rbxassetid://"..images[math.random(1,#images)]
AssetsLoaded = false
--script.Parent.Sound:Play()
script.Parent.INTRO.Visible = true
script.Parent.VALUES.Intro.Value = true
local mod = -300
local modmax = 3
BF = script.Parent.INTRO.Frame.Buttons
BFC = script.Parent.INTRO.Frame.Buttons:GetChildren()
script.Parent.INTRO.Frame.User.Text = game.Players.LocalPlayer.Name
local player = game.Players.LocalPlayer.PlayerGui
local playerspeed = game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed
local playertorso = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local Humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
PARENT = script.Parent
CUTSCENESCENES = PARENT.CutS

local blur = Instance.new("BlurEffect")
blur.Parent = game.Workspace.CurrentCamera

local TEXTONE = "GamesCell Historical Archives"
local TEXTTWO = "presents"
local TEXTFOUR = "the"
local TEXTTHREE = "Research Labs"

local introdeb = false
game.Players.LocalPlayer:WaitForChild("PlayerGui"):SetTopbarTransparency(1)
script.Parent.INTRO.Frame.Player.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
----------------------------
local module = require(game.ReplicatedStorage.API)
local http = game:GetService("HttpService")
local trelloboardid = ""
local plr = game.Players.LocalPlayer
local cooldown = 60
local cooltext = 60
local playeruser = nil
sent = false
sentreport = false
script.Parent.INTRO.LOADING.Visible = true
----------------------------------------------------------------------
--------------------------------------------------------------------------------------
for i = 0x1, #script.Parent.SETTINGS.F2.General:GetChildren() do
	if script.Parent.SETTINGS.F2.General:GetChildren()[i]:IsA("Frame") then
		if script.Parent.SETTINGS.F2.General:GetChildren()[i]:FindFirstChild("SettingDo") then
			if script.Parent.VALUES.General[tostring(script.Parent.SETTINGS.F2.General:GetChildren()[i]:FindFirstChild("SettingDo").Value)].Value == true then
				script.Parent.SETTINGS.F2.General:GetChildren()[i].Button.Text = "X"
			else
				script.Parent.SETTINGS.F2.General:GetChildren()[i].Button.Text = " "
			end
		end
	end
end
--------------------------------------------------------------------------------------
for i = 0x1, #script.Parent.SETTINGS.F2.Sounds:GetChildren() do
	if script.Parent.SETTINGS.F2.Sounds:GetChildren()[i]:IsA("Frame") then
		if script.Parent.SETTINGS.F2.Sounds:GetChildren()[i]:FindFirstChild("SettingDo") then
			if script.Parent.VALUES.Sounds[tostring(script.Parent.SETTINGS.F2.Sounds:GetChildren()[i]:FindFirstChild("SettingDo").Value)].Value == true then
				script.Parent.SETTINGS.F2.Sounds:GetChildren()[i].Button.Text = "X"
			else
				script.Parent.SETTINGS.F2.Sounds:GetChildren()[i].Button.Text = " "
			end
		end
	end
end
--------------------------------------------------------------------------------------
for i = 0x1, #script.Parent.SETTINGS.F2.Graphics:GetChildren() do
	if script.Parent.SETTINGS.F2.Graphics:GetChildren()[i]:IsA("Frame") then
		if script.Parent.SETTINGS.F2.Graphics:GetChildren()[i]:FindFirstChild("SettingDo") then
			if script.Parent.VALUES.Graphics[tostring(script.Parent.SETTINGS.F2.Graphics:GetChildren()[i]:FindFirstChild("SettingDo").Value)].Value == true then
				script.Parent.SETTINGS.F2.Graphics:GetChildren()[i].Button.Text = "X"
			else
				script.Parent.SETTINGS.F2.Graphics:GetChildren()[i].Button.Text = " "
			end
		end
	end
end
--------------------------------------------------------------------------------------
----------------------------------------------------------------------
if game.Workspace["MAIN.VALUES"].MELTDOWN.Value == false and game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value == false and script.Parent.VALUES.Sounds.Mute.Value == false then
	if script.Parent.SoundLOAD.Playing == false then
		script.Parent.SoundLOAD:Play()
	end
end
----------------------------------------------------------------------
-------------------------DO NOT DISTURB IS AT NOTIFICATION------------
----------------------------------------------------------------------
----------------------------------------------------------------------
if script.Parent.VALUES.Graphics.LowGPU.Value == false then
	game.Lighting.Bloom.Enabled = true
	game.Lighting.Blur.Enabled = true
	game.Lighting.REAL.Enabled = true
	game.Lighting.SunRays.Enabled = true
else
	game.Lighting.Bloom.Enabled = false
	game.Lighting.Blur.Enabled = false
	game.Lighting.REAL.Enabled = false
	game.Lighting.SunRays.Enabled = false
end
----------------------------------------------------------------------
if script.Parent.VALUES.Sounds.DisAnn.Value == false then
	local childz = game.Workspace["MAIN.SOUNDS"].PIZZADAY:GetChildren()
	for i = 0x1,#childz do
		childz[i].Volume = 0.3
	end
else 
	local childz = game.Workspace["MAIN.SOUNDS"].PIZZADAY:GetChildren()
	for i = 0x1,#childz do
		childz[i].Volume = 0
	end	
end
----------------------------------------------------------------------
if script.Parent.VALUES.Sounds.Mute.Value == false then
	script.Parent.Sound.Volume = 1
	script.Parent.SoundLOAD.Volume = 1
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.ActivationSong.Volume = 1
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.ActivationSong.Volume = 1
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.BackgroundTheme.Volume = 1
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.BackgroundTheme.Volume = 1
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.CountdownTheme.Volume = 1
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.CountdownTheme.Volume = 1
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.EmergencyCoolantOST.Volume = 1
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.EmergencyCoolantOST.Volume = 1
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.NuclearBackground.Volume = 1
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.NuclearBackground.Volume = 1
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.SuccessfullyOST.Volume = 1
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.SuccessfullyOST.Volume = 1
else
	script.Parent.Sound.Volume = 0
	script.Parent.SoundLOAD.Volume = 0
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.ActivationSong.Volume = 0
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.ActivationSong.Volume = 0
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.BackgroundTheme.Volume = 0
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.BackgroundTheme.Volume = 0
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.CountdownTheme.Volume = 0
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.CountdownTheme.Volume = 0
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.EmergencyCoolantOST.Volume = 0
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.EmergencyCoolantOST.Volume = 0
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.NuclearBackground.Volume = 0
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.NuclearBackground.Volume = 0
	game.Workspace["MAIN.SOUNDS"].MELTDOWN.SuccessfullyOST.Volume = 0
	game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.SuccessfullyOST.Volume = 0			
end
----------------------------------------------------------------------
function intromaingui()
	script.Parent.INTRO.Frame.Visible = true
	script.Parent.Cut.Disabled = false
	script.Parent.PLAY.Visible = true
	mod = 1
end

function loaded()
	if introdeb == false then
		introdeb = true
		script.Parent.SoundLOAD:Stop()
		gui.Frame.Visible = false
		gui.LOADING.Visible = false
		gui.QUOTE.Visible = false
		if game.Workspace["MAIN.VALUES"].MELTDOWN.Value == false and game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value == false then
			script.Parent.Sound:Play()
		end
		wait(2)
		local dagreeting = greetings[math.random(1,#greetings)]
		for i=1,#dagreeting do
			script.Parent.INTRO.LOADING.LOADED.Text = string.sub(dagreeting,1,i)
			wait(0.05)
		end
		if script.Parent.VALUES.General.FastIntro.Value == false then
			------------------------------------
			------------------------------------
			script.Parent.INTRO.LOADING.Frame.Visible = false
			CUTSCENESCENES.Cut1.Disabled = false
			for i = 1,30 do
				script.Parent.INTRO.LOADING.BackgroundTransparency = script.Parent.INTRO.LOADING.BackgroundTransparency + 0.1
				script.Parent.INTRO.LOADING.LOADED.TextTransparency = script.Parent.INTRO.LOADING.LOADED.TextTransparency + 0.1
				wait()
			end
			script.Parent.INTRO.LOADING.Visible = false

			script.Parent.SoundLOAD:Stop()
			script.Parent.PLAY.PLAY.MONETARY.Text = "MONEY: "..game.Players.LocalPlayer.leaderstats.Money.Value
			----------------------------



			---------------------------- MAIN SCRIPT ----------------------------
			--script.Parent.INTRO.Frame.Music.Text = "Now playing: "..mp:GetProductInfo(script.Parent.Sound.SoundId).Name
			for i=1,#TEXTONE do
				script.Parent.INTRO.MAINTEXT.Text = string.sub(TEXTONE,1,i)
				wait()
			end
			wait(1)
			for i=1,#TEXTTWO do
				script.Parent.INTRO.MAINTEXT.Text = string.sub(TEXTTWO,1,i)
				wait()
			end
			wait(1)
			for i=1,#TEXTFOUR do
				script.Parent.INTRO.MAINTEXT.Text = string.sub(TEXTFOUR,1,i)
				wait()
			end
			wait(1)
			for i=1,#TEXTTHREE do
				script.Parent.INTRO.MAINTEXT.Text = string.sub(TEXTTHREE,1,i)
				wait()
			end
			wait(5)
			CUTSCENESCENES.Cut1.Disabled = true
			script.Parent.INTRO.MAINTEXT.Text = ""
			--script.Parent.INTRO.Frame:TweenPosition(UDim2.new(0,0,0,0),"Out",5)
			intromaingui()

		else
			script.Parent.INTRO.LOADING.Frame.Visible = false
			CUTSCENESCENES.Cut1.Disabled = false
			for i = 1,30 do
				script.Parent.INTRO.LOADING.BackgroundTransparency = script.Parent.INTRO.LOADING.BackgroundTransparency + 0.1
				script.Parent.INTRO.LOADING.LOADED.TextTransparency = script.Parent.INTRO.LOADING.LOADED.TextTransparency + 0.1
				wait()
			end
			script.Parent.INTRO.LOADING.Visible = false

			script.Parent.SoundLOAD:Stop()
			script.Parent.PLAY.PLAY.MONETARY.Text = "MONEY: "..game.Players.LocalPlayer.leaderstats.Money.Value
			----------------------------

			------------------------------------
			------------------------------------
			------------------------------------
			------------------------------------
			intromaingui()
		end

	end
end





function joingame()

	PARENT.Cut.Disabled = true
	CUTSCENESCENES.Cut1.Disabled = true
	CUTSCENESCENES.Cut2.Disabled = true
	CUTSCENESCENES.Cut3.Disabled = true
	CUTSCENESCENES.Cut4.Disabled = true	
	--================================================--
	PARENT.INTRO.Visible = false
	PARENT.PLAY.Visible = false
	PARENT.FEEDBACK.Visible = false
	PARENT.DATABASE.Visible = false
	PARENT.SETTINGS.Visible = false
	PARENT.Fade.Visible = false
	--PARENT.HEALTH.Visible = true
	--================================================--
	game.Workspace.CurrentCamera.CameraType = "Custom"
	game.Workspace.CurrentCamera.FieldOfView = 70
	game.Workspace.CurrentCamera.CameraSubject = Humanoid
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
	for i=1,50 do
		blur.Size = blur.Size - 0.5
		script.Parent.Sound.Volume = script.Parent.Sound.Volume - 0.05
		wait()
	end
	blur:Remove()
	PARENT.Sound:Stop()
	--game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
	mod = -300
	--script.Parent.Parent.SHOPUI.Enabled = true
	--script.Parent.TopBarCOLOR.Visible = true
	script.Parent.VALUES.Intro.Value = false
	--script.Parent.TrialScript.Disabled = false
end

function feedbackwindow()
	script.Parent.DATABASE.Visible = false
	script.Parent.FEEDBACK.Visible = true
	script.Parent.REPORT.Visible = false
	script.Parent.PLAY.Visible = false
	script.Parent.SETTINGS.Visible = false
	script.Parent.COPYRIGHT.Visible = false
end

function reportwindow()
	script.Parent.DATABASE.Visible = false
	script.Parent.FEEDBACK.Visible = false
	script.Parent.REPORT.Visible = true
	script.Parent.PLAY.Visible = false
	script.Parent.SETTINGS.Visible = false
	script.Parent.COPYRIGHT.Visible = false
end

function settingswindow()
	script.Parent.DATABASE.Visible = false
	script.Parent.FEEDBACK.Visible = false
	script.Parent.PLAY.Visible = false
	script.Parent.REPORT.Visible = false
	script.Parent.SETTINGS.Visible = true
	script.Parent.COPYRIGHT.Visible = false
end

function policywindow()
	script.Parent.DATABASE.Visible = false
	script.Parent.FEEDBACK.Visible = false
	script.Parent.PLAY.Visible = false
	script.Parent.REPORT.Visible = false
	script.Parent.SETTINGS.Visible = false
	script.Parent.COPYRIGHT.Visible = true
end

function databasewindow()
	--script.Parent.INTRO.Frame.Play.Visible = false
	--script.Parent.INTRO.Frame.Feedback.Visible = false
	script.Parent.REPORT.Visible = false
	script.Parent.DATABASE.Visible = true
	script.Parent.FEEDBACK.Visible = false
	script.Parent.PLAY.Visible = false
	script.Parent.SETTINGS.Visible = false
	script.Parent.COPYRIGHT.Visible = false
end

---------------------------------------------------------------------
script.Parent.INTRO.Frame.Buttons.Play.MouseButton1Click:connect(function()
	script.Parent.VALUES.Mode.Value = "Play"

	--joingame()
end)

script.Parent.PLAY.PLAY.MouseButton1Click:Connect(function()
	joingame()
end)

script.Parent.PLAY.PLAYNEW.MouseButton1Click:Connect(function()
	if newgame == 0 then
		script.Parent.PLAY.PLAYNEW.TextLabel.Text = "ARE YOU SURE?"
		newgame = 1
	elseif newgame == 1 then
		script.Parent.PLAY.PLAYNEW.TextLabel.Text = "CLICK AGAIN"
		newgame = 2
	elseif newgame == 2 then	
		game.ReplicatedStorage.Database:FireServer(false,"reset")
		joingame()
		newgame = 0
	end
end)
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
local settingscateg = script.Parent.VALUES.SettingsMode.Value
--------------------------------------------------------------------------------------
for i,v in pairs(script.Parent.SETTINGS.F1:GetChildren()) do
	if v and v:IsA("TextButton") then
		if v:FindFirstChild("Frame") then
			v.MouseButton1Click:Connect(function()
				script.Parent.VALUES.SettingsMode.Value = tostring(v:FindFirstChild("Frame").Value)
				print("[ORACLE DEBUG SYSTEM]: ",script.Parent.VALUES.SettingsMode.Value)
				for j,c in pairs(script.Parent.SETTINGS.F2:GetChildren()) do
					if c.Name ~= script.Parent.VALUES.SettingsMode.Value then
						c.Visible = false
					else
						c.Visible = true
					end
				end
			end)
		end
	end
end
--------------------------------------------------------------------------------------
local deb1 = false
local deb2 = false
local deb3 = false
--------------------------------------------------------------------------------------
for i,v in pairs(script.Parent.SETTINGS.F2.General:GetChildren()) do
	if v and v:IsA("Frame") then
		if v:FindFirstChild("SettingDo") then
			v.Button.MouseButton1Click:Connect(function()
				if deb1 == false then deb1 = true
					if script.Parent.VALUES.General[tostring(v:FindFirstChild("SettingDo").Value)].Value == false then
						game.ReplicatedStorage.Database:FireServer(true,tostring(v:FindFirstChild("SettingDo").Value))
						v.Button.Text = "X"
					else
						game.ReplicatedStorage.Database:FireServer(false,tostring(v:FindFirstChild("SettingDo").Value))
						v.Button.Text = " "
					end
					wait(2)
					deb1 = false
				end
			end)
		end
	end
end
--------------------------------------------------------------------------------------
for i,v in pairs(script.Parent.SETTINGS.F2.Sounds:GetChildren()) do
	if v and v:IsA("Frame") then
		if v:FindFirstChild("SettingDo") then
			v.Button.MouseButton1Click:Connect(function()
				if deb2 == false then deb2 = true
					if script.Parent.VALUES.Sounds[tostring(v:FindFirstChild("SettingDo").Value)].Value == false then
						game.ReplicatedStorage.Database:FireServer(true,tostring(v:FindFirstChild("SettingDo").Value))
						v.Button.Text = "X"
					else
						game.ReplicatedStorage.Database:FireServer(false,tostring(v:FindFirstChild("SettingDo").Value))
						v.Button.Text = " "
					end
					wait(2)
					deb2 = false end
			end)
		end
	end
end
--------------------------------------------------------------------------------------
for i,v in pairs(script.Parent.SETTINGS.F2.Graphics:GetChildren()) do
	if v and v:IsA("Frame") then
		if v:FindFirstChild("SettingDo") then
			v.Button.MouseButton1Click:Connect(function() 
				if deb3 == false then
					deb3 = true
					if script.Parent.VALUES.Graphics[tostring(v:FindFirstChild("SettingDo").Value)].Value == false then
						game.ReplicatedStorage.Database:FireServer(true,tostring(v:FindFirstChild("SettingDo").Value))
						v.Button.Text = "X"
					else
						game.ReplicatedStorage.Database:FireServer(false,tostring(v:FindFirstChild("SettingDo").Value))
						v.Button.Text = " "
					end
					wait(2) deb3 = false end
			end)
		end
	end
end
--------------------------------------------------------------------------------------
script.Parent.VALUES.SettingsMode.Changed:Connect(function()
	settingscateg = script.Parent.VALUES.SettingsMode.Value
	local childzz = script.Parent.SETTINGS.F1:GetChildren()
	for i=0x1,#childzz do
		if childzz[i]:IsA("TextButton") then
			if childzz[i].Frame.Value ~= settingscateg then
				childzz[i].L.Visible = false
			else
				childzz[i].L.Visible = true
			end
		end
	end
end)
--------------------------------------------------------------------------------------
script.Parent.VALUES.Graphics.LowGPU.Changed:Connect(function()
	if script.Parent.VALUES.Graphics.LowGPU.Value == false then
		game.Lighting.Bloom.Enabled = true
		game.Lighting.Blur.Enabled = true
		game.Lighting.REAL.Enabled = true
		game.Lighting.SunRays.Enabled = true
	else
		game.Lighting.Bloom.Enabled = false
		game.Lighting.Blur.Enabled = false
		game.Lighting.REAL.Enabled = false
		game.Lighting.SunRays.Enabled = false
	end
end)
--------------------------------------------------------------------------------------
script.Parent.VALUES.Sounds.DisAnn.Changed:Connect(function()
	if script.Parent.VALUES.Sounds.DisAnn.Value == false then
		local childz = game.Workspace["MAIN.SOUNDS"].PIZZADAY:GetChildren()
		for i = 0x1,#childz do
			childz[i].Volume = 0.3
		end
	else 
		local childz = game.Workspace["MAIN.SOUNDS"].PIZZADAY:GetChildren()
		for i = 0x1,#childz do
			childz[i].Volume = 0
		end	
	end
end)
--------------------------------------------------------------------------------------
script.Parent.VALUES.Sounds.Mute.Changed:Connect(function()
	if script.Parent.VALUES.Sounds.Mute.Value == false then
		script.Parent.Sound.Volume = 1
		script.Parent.SoundLOAD.Volume = 1
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.ActivationSong.Volume = 1
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.ActivationSong.Volume = 1
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.BackgroundTheme.Volume = 1
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.BackgroundTheme.Volume = 1
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.CountdownTheme.Volume = 1
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.CountdownTheme.Volume = 1
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.EmergencyCoolantOST.Volume = 1
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.EmergencyCoolantOST.Volume = 1
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.NuclearBackground.Volume = 1
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.NuclearBackground.Volume = 1
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.SuccessfullyOST.Volume = 1
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.SuccessfullyOST.Volume = 1	
	else
		script.Parent.Sound.Volume = 0
		script.Parent.SoundLOAD.Volume = 0
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.ActivationSong.Volume = 0
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.ActivationSong.Volume = 0
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.BackgroundTheme.Volume = 0
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.BackgroundTheme.Volume = 0
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.CountdownTheme.Volume = 0
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.CountdownTheme.Volume = 0
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.EmergencyCoolantOST.Volume = 0
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.EmergencyCoolantOST.Volume = 0
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.NuclearBackground.Volume = 0
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.NuclearBackground.Volume = 0
		game.Workspace["MAIN.SOUNDS"].MELTDOWN.SuccessfullyOST.Volume = 0
		game.Workspace["MAIN.SOUNDS"].FREEZEDOWN.SuccessfullyOST.Volume = 0			
	end
end)
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
game.ReplicatedStorage.Notification.OnClientEvent:Connect(function(title,msg,dur,val)
	if script.Parent.VALUES.Intro.Value == false and script.Parent.VALUES.General.DoNoDist.Value == false then
		game.StarterGui:SetCore("SendNotification", {
			Title = title; 
			Text = msg; 
			Duration = dur or 10; 
			Button1 = "Close";
		})
		local chatt = val or false;
		if chatt == true then
			game:service("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="[System]: "..msg})
		end
	end
end)
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

script.Parent.INTRO.Frame.Buttons.Feedback.MouseButton1Click:connect(function()
	script.Parent.VALUES.Mode.Value = "Feedback"	
end)

script.Parent.INTRO.Frame.Buttons.Report.MouseButton1Click:connect(function()
	script.Parent.VALUES.Mode.Value = "Report"	
end)

script.Parent.INTRO.Frame.Buttons.Settings.MouseButton1Click:connect(function()
	script.Parent.VALUES.Mode.Value = "Settings"	
end)

script.Parent.INTRO.Frame.Buttons.Policy.MouseButton1Click:connect(function()
	script.Parent.VALUES.Mode.Value = "Policy"	
end)

script.Parent.INTRO.Frame.Buttons.Database.MouseButton1Click:connect(function()
	script.Parent.VALUES.Mode.Value = "Database"
end)

script.Parent.EXPERIMENTALNOTE.CANCEL.MouseButton1Click:connect(function()
	script.Parent.EXPERIMENTALNOTE.Visible = false
	script.Parent.INTRO.Frame:TweenPosition(UDim2.new(0,0,0,0),"Out",5)
	script.Parent.Cut.Disabled = false
end)

script.Parent.EXPERIMENTALNOTE.SEND.MouseButton1Click:connect(function()
	script.Parent.EXPERIMENTALNOTE.Visible = false
	script.Parent.INTRO.Frame:TweenPosition(UDim2.new(0,0,0,0),"Out",5)
	script.Parent.Cut.Disabled = false
end)

UIS.InputBegan:connect(function(input, processed)

	if mod ~= -300 then 
		if input.UserInputType == Enum.UserInputType.Gamepad1 then
			if input.KeyCode == Enum.KeyCode.ButtonA then
				if script.Parent.VALUES.Mode.Value == "Play" then
					joingame()
				end
			end


			if input.KeyCode == Enum.KeyCode.ButtonR1 then
				if mod < modmax then
					mod = mod + 1
				else
					mod = 1
				end

				if mod == 1 then
					script.Parent.VALUES.Mode.Value = "Play"
				elseif mod == 2 then
					script.Parent.VALUES.Mode.Value = "Feedback"
				elseif mod == 3 then
					script.Parent.VALUES.Mode.Value = "Settings"
				elseif mod == 4 then
					script.Parent.VALUES.Mode.Value = "Policy"
				end

			end


			if input.KeyCode == Enum.KeyCode.ButtonL1 then
				if mod > 1 then
					mod = mod - 1
				else
					mod = modmax
				end

				if mod == 1 then
					script.Parent.VALUES.Mode.Value = "Play"
				elseif mod == 2 then
					script.Parent.VALUES.Mode.Value = "Feedback"
				elseif mod == 3 then
					script.Parent.VALUES.Mode.Value = "Settings"
				elseif mod == 4 then
					script.Parent.VALUES.Mode.Value = "Policy"
				end

			end

		end
	end
end)

UIS.GamepadConnected:connect(function(gamepad)
	if script.Parent.VALUES.Mode.Value ~= "Database" or script.Parent.VALUES.Mode.Value ~= "Feedback" or script.Parent.VALUES.Mode.Value ~= "Report" or script.Parent.VALUES.Mode.Value ~= "Policy" then
		script.Parent.INTRO.Frame.SHOW.Visible = true
	end
end)

UIS.GamepadDisconnected:connect(function(gamepad)
	script.Parent.INTRO.Frame.SHOW.Visible = false
end)

if UIS.GamepadEnabled then
	script.Parent.INTRO.Frame.SHOW.Visible = true
else
	script.Parent.INTRO.Frame.SHOW.Visible = false
end

script.Parent.VALUES.Mode.Changed:Connect(function()

	if mod ~= -300 then
		for i = 0x1,#BFC do
			if BFC[i]:IsA("TextButton") then
				BFC[i].Frame.Visible = false
				BFC[i].BackgroundTransparency = 0.4
				BFC[i].BackgroundColor3 = Color3.fromRGB(90, 90, 90)
				BFC[i].TextColor3 = Color3.fromRGB(255, 255, 255)
			end
		end

		BF[script.Parent.VALUES.Mode.Value].Frame.Visible = true
		BF[script.Parent.VALUES.Mode.Value].BackgroundTransparency = 0
		BF[script.Parent.VALUES.Mode.Value].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		BF[script.Parent.VALUES.Mode.Value].TextColor3 = Color3.fromRGB(0, 0, 0)

		if UIS.GamepadEnabled then
			script.Parent.INTRO.Frame.SHOW.Visible = true
		else
			script.Parent.INTRO.Frame.SHOW.Visible = false
		end

		if script.Parent.VALUES.Mode.Value == "Play" then
			script.Parent.INTRO.Frame.SHOW.TextLabel.Text = "Play"
			script.Parent.DATABASE.Visible = false
			script.Parent.FEEDBACK.Visible = false
			script.Parent.REPORT.Visible = false
			script.Parent.PLAY.Visible = true
			script.Parent.SETTINGS.Visible = false
			script.Parent.COPYRIGHT.Visible = false
			mod = 1
		elseif script.Parent.VALUES.Mode.Value == "Feedback" then
			feedbackwindow()
			mod = 2
			script.Parent.INTRO.Frame.SHOW.Visible = false
		elseif script.Parent.VALUES.Mode.Value == "Report" then
			reportwindow()
			mod = 3
			script.Parent.INTRO.Frame.SHOW.Visible = false	
		elseif script.Parent.VALUES.Mode.Value == "Settings" then
			settingswindow()
			mod = 4
			script.Parent.INTRO.Frame.SHOW.Visible = false	
		elseif script.Parent.VALUES.Mode.Value == "Policy" then
			policywindow()
			mod = 5
			script.Parent.INTRO.Frame.SHOW.Visible = false		

		else
			script.Parent.INTRO.Frame.SHOW.Visible = false
		end

		script.Parent.Select:Play()
	end
end)

gui.SKIP.MouseButton1Click:connect(function()
	AssetsLoaded = true
	gui.Frame.LOAD.Size = UDim2.new(1, 0 ,1 ,0)	
	loaded()
end)

------------------------LOAD THE INTRO OF THE GAME ----------------------------
-------------------------------------------------------------------------------

for i,v in ipairs(assets:GetChildren()) do
	if v.ClassName == "Decal" then
		table.insert(Loading,""..v.Texture)
	end
end

for _, asset in ipairs(Loading) do
	game.ContentProvider:Preload(asset)
end


gui.QUOTE.Visible = true
gui.QUOTE.TEXT.Text = textstrings[math.random(1,#textstrings)]

while AssetsLoaded == false or game.ContentProvider.RequestQueueSize > 0 do
	wait()
	local CONTENT = game.ContentProvider.RequestQueueSize
	--game:GetService("StarterGui"):SetCore("ResetButtonCallback", false)
	gui.LOADING.Text = "Loading" .. string.rep(".",count)

	count = (count + 1) % 4
	size = CONTENT
	sizemax = 0 
	if size > sizemax then
		sizemax = size
	end

	gui.Frame.LOAD.Size = UDim2.new(1/sizemax, 0 ,1 ,0)
	wait(.3) 

	if CONTENT < 1 then
		gui.Frame.LOAD.Size = UDim2.new(1, 0 ,1 ,0)	
		AssetsLoaded = true	
		loaded()
	end
end

AssetsLoaded = true

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
