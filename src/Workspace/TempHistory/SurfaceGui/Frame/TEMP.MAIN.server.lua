local max = game.Workspace.Temp.Max
local gridmax = 9
local grid = 1
while true do
	wait()
	if game.Workspace["MAIN.VALUES"].MELTDOWN.Value == false and game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value == false then
	if grid > gridmax then
		childz = script.Parent.FRAME:GetChildren()
		for i = 0x1,#childz do
			if childz[i].Name == "TEMP" then
				childz[i]:remove()
			end
		end
	grid = 1	
	end
	local x = script.Parent.FRAME.TEMPLATE:Clone()
	x.Parent = script.Parent.FRAME
	x.TEMP.FRAME.Size = UDim2.new(1, 0, -(game.Workspace.Temp.Current.Value/max.Value)/2, 0)
    x.Name = "TEMP"
    x.TEMPNUMBER.Text = game.Workspace.Temp.Current.Value.."C"
    x.Visible = true
    grid = grid + 1
    wait(20)
    end
end