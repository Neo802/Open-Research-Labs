while true do
	wait()
	if script.Parent.Parent.Parent.Parent.Parent.Script.Opened.Value == true then
		script.Parent.TextColor3 = Color3.new(0, 255, 0)
		script.Parent.Text = "]["
		wait(.2)
		script.Parent.Text = "] ["
		wait(.2)
		script.Parent.Text = "]  ["
		wait(.2)
		script.Parent.Text = "]["
		wait(.2)
		script.Parent.Text = "] ["
		wait(.2)
		script.Parent.Text = "]  ["
		elseif script.Parent.Parent.Parent.Parent.Parent.Script.Opened.Value == false then
		script.Parent.Text = "]["
		script.Parent.TextColor3 = Color3.new(255, 0, 0)
		
	end
end