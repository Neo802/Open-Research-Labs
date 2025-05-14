local child = script.Parent.SurfaceGui.Frame:GetChildren()
local frame = script.Parent.SurfaceGui.Frame

game.Workspace["MAIN.VALUES"].MFZIG.Changed:Connect(function()
for i=0x1,#child do
	if child[i]:IsA("TextLabel") then
	child[i].BackgroundTransparency = 1
	end
end
frame["N"..game.Workspace["MAIN.VALUES"].MFZIG.Value].BackgroundTransparency = 0
end)
