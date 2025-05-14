local child = script.Parent.MAINFRAME:GetChildren()
while true do
	wait()
	if game.Workspace.Temp.Current.Value >= 3600 then
		for i=0x1,#child do
			child[i].Fire.Enabled = true
			child[i].Smoke.Enabled = true
		end
	
	else
		for i=0x1,#child do
			child[i].Fire.Enabled = false
			child[i].Smoke.Enabled = false
		end	
			
	end
end