frame = script.Parent.Parent.Frame
close = frame.CLOSE
freeze = frame.FREEZE
melt = frame.MELT
reboot = frame.REBOOT
CORE = script.Parent.Parent.Parent.Parent.Parent.Parent
LIFTLIGHTS = game.Workspace.CoreLiftyLights
LIFTCHILD = LIFTLIGHTS:GetChildren()
local used = false 

close.MouseButton1Click:Connect(function()
	if used == false then
	used = true
	script.Parent.Parent.Parent.Parent.Sound2:Play()
	wait(0.7)
	CORE.Core.ALARM:Play()	
	for i=0x1,#LIFTCHILD do
	LIFTCHILD[i].Color = Color3.fromRGB(0, 16, 176)
    end
	script.Parent.Parent.Visible = false
	script.Parent.Parent.Parent.Enabled = false
	for i=1,88 do
        CORE:SetPrimaryPartCFrame(CORE.PrimaryPart.CFrame * CFrame.new(0, -0.5, 0))
    wait()
	end
	CORE.Parent.KeyPad.SurfaceGui.Enabled = true
	CORE.Parent.KeyPad.SurfaceGui.Frame.Visible = true
    CORE.Parent.KeyPad.SurfaceGui.Frame.SCREEN.Script.Disabled = false
    used = false
    script.Disabled = true
    end
end)

melt.MouseButton1Click:Connect(function()
	if used == false then
	used = true	
	script.Parent.Parent.Parent.Parent.Sound2:Play()
	wait(0.7)
	CORE.Core.ALARM:Play()		
	for i=0x1,#LIFTCHILD do
	LIFTCHILD[i].Color = Color3.fromRGB(27, 27, 27)
    end	
	script.Parent.Parent.Visible = false	
	script.Parent.Parent.Parent.Enabled = false
	for i=1,88 do
        CORE:SetPrimaryPartCFrame(CORE.PrimaryPart.CFrame * CFrame.new(0, -0.5, 0))
    wait()
	end
	CORE.Parent.KeyPad.SurfaceGui.Enabled = true
	CORE.Parent.KeyPad.SurfaceGui.Frame.Visible = false
	CORE.Parent.KeyPad.SurfaceGui.DISABLED.Visible = true
	game.Workspace.Temp.Current.Value = 9999999999
	used = false
	script.Disabled = true
    end
end)

freeze.MouseButton1Click:Connect(function()
	if used == false then
	used = true
	script.Parent.Parent.Parent.Parent.Sound2:Play()
	wait(0.7)
	CORE.Core.ALARM:Play()		
	for i=0x1,#LIFTCHILD do
	LIFTCHILD[i].Color = Color3.fromRGB(27, 27, 27)
    end	
	script.Parent.Parent.Visible = false	
	script.Parent.Parent.Parent.Enabled = false
	for i=1,88 do
        CORE:SetPrimaryPartCFrame(CORE.PrimaryPart.CFrame * CFrame.new(0, -0.5, 0))
    wait()
    end
	CORE.Parent.KeyPad.SurfaceGui.Frame.Visible = false
	CORE.Parent.KeyPad.SurfaceGui.DISABLED.Visible = true
	game.Workspace.Temp.Current.Value = -9999999999
	used = false
	script.Disabled = true
	end
end)

reboot.MouseButton1Click:Connect(function()
	if used == false then
	used = true
	script.Parent.Parent.Parent.Parent.Sound2:Play()
	wait(0.7)
	CORE.Core.ALARM:Play()		
	for i=0x1,#LIFTCHILD do
	LIFTCHILD[i].Color = Color3.fromRGB(27, 27, 27)
    end	
	script.Parent.Parent.Visible = false	
	script.Parent.Parent.Parent.Enabled = false
	for i=1,88 do
        CORE:SetPrimaryPartCFrame(CORE.PrimaryPart.CFrame * CFrame.new(0, -0.5, 0))
    wait()
	    end
	used = false
	while true do
	wait(.1)
         for _,v in pairs(game.Players:GetPlayers()) do
	        v:Kick("This game has been shutdown by one of developers.")
         end
	     end
	end
end)