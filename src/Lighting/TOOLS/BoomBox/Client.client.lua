local Tool = script.Parent
local Remote = Tool:WaitForChild("Remote")
local songgui

local CAS = game:GetService("ContextActionService")
local ActionName = "PenguinAttack"

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

function onAction()
	Remote:FireServer("Activate", Mouse.Hit.p)
end

function onEquipped(mouse)
	--ensure unequip
	onUnequipped()
	
	--bind
	mouse.Button1Down:connect(onAction)
end

function onUnequipped()
	--unbind
	CAS:UnbindAction(ActionName)
	
	if songgui then
		songgui:Destroy()
	end
end

function playAnimation(name, ...)
	local anim = Tool:FindFirstChild(name)
	if anim then
		local human = Tool.Parent:FindFirstChild("Humanoid")
		if human then
			local track = human:LoadAnimation(anim)
			track:Play(...)
		end
	end
end

function chooseSong()
	if Player.PlayerGui:FindFirstChild("ChooseSongGui") then return end
	
	local sg = script.Parent.ChooseSongGui
    local sgc = sg:Clone()
    sgc.Parent = Player.PlayerGui
    
    local button = sgc.Frame.TextButton
    local input = sgc.Frame.TextBox
    local input2 = sgc.Frame.VolumeBox
    local input3 = sgc.Frame.PitchBox

	button.MouseButton1Click:connect(function()
		Remote:FireServer("PlaySong", tonumber(input.Text),tonumber(input2.Text),tonumber(input3.Text))
		sgc:Destroy()
	end)
	
	songgui = sgc
end

function onRemote(func, ...)
	if func == "PlayAnimation" then
		playAnimation(...)
	end
	
	if func == "ChooseSong" then
		chooseSong()
	end
end

--connect
Tool.Equipped:connect(onEquipped)
Tool.Unequipped:connect(onUnequipped)
Remote.OnClientEvent:connect(onRemote)