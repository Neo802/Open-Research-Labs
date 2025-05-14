while true do
	wait()
	if script.Parent.Parent.Parent.Parent.Parent.Script.Ready.Value == true then
		script.Parent.Text = "READY"
		script.Parent.TextColor3 = Color3.new(0, 255, 0)
		
		elseif script.Parent.Parent.Parent.Parent.Parent.Script.Ready.Value == false then
		script.Parent.Text = "WAIT"
		script.Parent.TextColor3 = Color3.new(255, 0, 0)
	end
end