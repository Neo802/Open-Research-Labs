local child = script.Parent:GetChildren()
local colorred = Color3.fromRGB(170, 0, 0)
local colorgreen = Color3.fromRGB(85, 170, 0)

game.Workspace.Temp.Current.Changed:Connect(function()
	if game.Workspace.Temp.Current.Value >= game.Workspace.Temp.Max.Value - 400 then
		script.Parent.Visible = false
		script.Parent.Parent.BSOD.Visible = true
	else
		script.Parent.Visible = true
		script.Parent.Parent.BSOD.Visible = false
	end
end)