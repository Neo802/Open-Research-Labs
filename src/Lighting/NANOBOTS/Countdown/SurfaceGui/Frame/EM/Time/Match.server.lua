while true do 
wait()
script.Parent.Text = "T-"..game.Workspace.Countvalue.Value
if game.Workspace.Countvalue.Value == 10 then
	script.Parent.Text = "!!!EVACUATE!!!"
end
end 
