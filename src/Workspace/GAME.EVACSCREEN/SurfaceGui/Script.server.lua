while true do
	wait()
if game.Workspace["MAIN.VALUES"].MELTDOWN.Value == true or game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value == true then
    script.Parent.MAIN.TextLabel.Visible = true
    wait(1.5)
    script.Parent.MAIN.TextLabel.Visible = false
    wait(1.5)
else
	script.Parent.MAIN.TextLabel.Visible = false
	script.Parent.MAIN.TextLabel.Position = UDim2.new(0,0,0,0)
end

end
