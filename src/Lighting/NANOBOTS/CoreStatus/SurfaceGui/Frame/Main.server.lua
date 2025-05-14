local colorpart = game.Workspace["GAME.COLORPART"]
local colorc = colorpart:GetChildren()

function normal()
	script.Parent.ImageLabel.ImageColor3 = Color3.fromRGB(255, 170, 0)
	script.Parent.ImageLabel.ImageLabel.ImageColor3 = Color3.fromRGB(255, 217, 0)
end

function freeze()
	script.Parent.ImageLabel.ImageColor3 = Color3.fromRGB(170, 255, 255)
	script.Parent.ImageLabel.ImageLabel.ImageColor3 = Color3.fromRGB(0, 170, 255)
end

while true do
	wait()
	if game.Workspace.Temp.Current.Value >= -1599 and game.Workspace.Temp.Current.Value <= 1599 then
    script.Parent.Warning.Visible = false
    script.Parent.WarningFR.Visible = false
    normal()
    ----------------------------------------
    script.Parent.StatusText.Text = "STABLE"
    script.Parent.StatusText.BorderColor3 = Color3.new(0, 255, 0)
    script.Parent.StatusText.TextColor3 = Color3.new(0, 255, 0)
    ----------------------------------------
    script.Parent.StatusText2.Text = "Excellent status"
    script.Parent.StatusText2.TextColor3 = Color3.new(0, 255, 0)
    ----------------------------------------
    for i=0x1,#colorc do
	   if colorc[i]:IsA("Part") or colorc[i]:IsA("WedgePart") then
		   colorc[i].BrickColor = BrickColor.new("Shamrock")
	   end
    end
    ----------------------------------------
    elseif game.Workspace.Temp.Current.Value >= -2999 and game.Workspace.Temp.Current.Value <=-1600 then
    script.Parent.Warning.Visible = false
    script.Parent.WarningFR.Visible = false
    freeze()
    ----------------------------------------
    script.Parent.StatusText.Text = "CRITICAL"
    script.Parent.StatusText.BorderColor3 = Color3.fromRGB(170, 255, 255)
    script.Parent.StatusText.TextColor3 = Color3.fromRGB(170, 255, 255)
    ----------------------------------------
    script.Parent.StatusText2.Text = "Temperature is reaching safe limit"
    script.Parent.StatusText2.TextColor3 = Color3.fromRGB(170, 255, 255)
    ----------------------------------------
    for i=0x1,#colorc do
	   if colorc[i]:IsA("Part") or colorc[i]:IsA("WedgePart") then
		   colorc[i].Color = Color3.fromRGB(170, 255, 255)
	   end
    end   
    ----------------------------------------
    elseif game.Workspace.Temp.Current.Value >= -3999 and game.Workspace.Temp.Current.Value <=-3000 then
    script.Parent.Warning.Visible = false
    script.Parent.WarningFR.Visible = true
    freeze()
    ----------------------------------------
    script.Parent.StatusText.Text = "OVERFREEZING"
    script.Parent.StatusText.BorderColor3 = Color3.fromRGB(0, 255, 255)
    script.Parent.StatusText.TextColor3 = Color3.fromRGB(0, 255, 255)
    ----------------------------------------
    script.Parent.StatusText2.Text = "Temperature exceeded safe limit"
    script.Parent.StatusText2.TextColor3 = Color3.fromRGB(0, 255, 255)
    ----------------------------------------
    for i=0x1,#colorc do
	   if colorc[i]:IsA("Part") or colorc[i]:IsA("WedgePart") then
		   colorc[i].Color = Color3.fromRGB(0, 255, 255)
	   end
    end   
    ----------------------------------------
    elseif game.Workspace.Temp.Current.Value <=-4000 then
    script.Parent.Warning.Visible = false
    script.Parent.WarningFR.Visible = true
    freeze()
    ----------------------------------------
    script.Parent.StatusText.Text = "FREEZEDOWN"
    script.Parent.StatusText.BorderColor3 = Color3.fromRGB(0, 179, 255)
    script.Parent.StatusText.TextColor3 = Color3.fromRGB(0, 179, 255)
    ----------------------------------------
    script.Parent.StatusText2.Text = "Evacuate the facility!"
    script.Parent.StatusText2.TextColor3 = Color3.fromRGB(0, 179, 255)
    ----------------------------------------
    for i=0x1,#colorc do
	   if colorc[i]:IsA("Part") or colorc[i]:IsA("WedgePart") then
		   colorc[i].Color = Color3.fromRGB(0, 179, 255)
	   end
    end   
    ----------------------------------------
    elseif game.Workspace.Temp.Current.Value >= 1600 and game.Workspace.Temp.Current.Value <= 2999 then
	script.Parent.Warning.Visible = false
    script.Parent.WarningFR.Visible = false		
    normal()	
	----------------------------------------
    script.Parent.StatusText.Text = "CRITICAL"
    script.Parent.StatusText.BorderColor3 = Color3.new(255, 255, 0)
    script.Parent.StatusText.TextColor3 = Color3.new(255, 255, 0)
    ----------------------------------------
    script.Parent.StatusText2.Text = "Temperature is reaching safe limit"
    script.Parent.StatusText2.TextColor3 = Color3.new(255, 255, 0)
    ----------------------------------------
    for i=0x1,#colorc do
	   if colorc[i]:IsA("Part") or colorc[i]:IsA("WedgePart") then
		   colorc[i].BrickColor = BrickColor.new("Deep orange")
	   end
    end
    ----------------------------------------
	elseif game.Workspace.Temp.Current.Value >= 3000 and game.Workspace.Temp.Current.Value <= 3999 then
	script.Parent.Warning.Visible = true	
    script.Parent.WarningFR.Visible = false
    normal()
	----------------------------------------
    script.Parent.StatusText.Text = "OVERHEATING"
    script.Parent.StatusText.BorderColor3 = Color3.new(255, 0, 0)
    script.Parent.StatusText.TextColor3 = Color3.new(255, 0, 0)
    ----------------------------------------
    script.Parent.StatusText2.Text = "Warning: Temperature exceeded safe levels"
    script.Parent.StatusText2.TextColor3 = Color3.new(255, 0, 0)
    ----------------------------------------
    for i=0x1,#colorc do
	   if colorc[i]:IsA("Part") or colorc[i]:IsA("WedgePart") then
		   colorc[i].BrickColor = BrickColor.new("Bright red")
	   end
    end
    ----------------------------------------
	elseif game.Workspace.Temp.Current.Value >= 4000 then
		script.Parent.Warning.Visible = true
    script.Parent.WarningFR.Visible = false	
    normal()
	----------------------------------------
    script.Parent.StatusText.Text = "MELTDOWN"
    script.Parent.StatusText.BorderColor3 = Color3.new(255, 0, 0)
    script.Parent.StatusText.TextColor3 = Color3.new(255, 0, 0)
    ----------------------------------------
    script.Parent.StatusText2.Text = "DANGER! Evacuate the facility now!"
    script.Parent.StatusText2.TextColor3 = Color3.new(255, 0, 0)
    ----------------------------------------
    for i=0x1,#colorc do
	   if colorc[i]:IsA("Part") or colorc[i]:IsA("WedgePart") then
		   colorc[i].BrickColor = BrickColor.new("Cocoa")
	   end
    end
    ----------------------------------------
	end
end