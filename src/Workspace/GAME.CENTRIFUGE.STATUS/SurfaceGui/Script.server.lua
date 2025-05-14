while true do
	wait()
	if game.Workspace["MAIN.VALUES"].CENTRIFUGE.Value == 1 then
	script.Parent.TweeningFrame:TweenSize(UDim2.new(0, 0,0.228, 0),"Out","Bounce",1)
	script.Parent.Number.Text = "0 RPM"
	
	elseif game.Workspace["MAIN.VALUES"].CENTRIFUGE.Value == 2 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.21, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "500 RPM"	
		
	elseif game.Workspace["MAIN.VALUES"].CENTRIFUGE.Value == 3 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.31, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "2.500 RPM"	
			
	elseif game.Workspace["MAIN.VALUES"].CENTRIFUGE.Value == 4 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.41, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "5.000 RPM"
	elseif game.Workspace["MAIN.VALUES"].CENTRIFUGE.Value == 5 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.51, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "10.000 RPM"
	elseif game.Workspace["MAIN.VALUES"].CENTRIFUGE.Value == 6 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.61, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "25.000 RPM"
	elseif game.Workspace["MAIN.VALUES"].CENTRIFUGE.Value == 7 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.71, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "50.000 RPM"				
	elseif game.Workspace["MAIN.VALUES"].CENTRIFUGE.Value == 8 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.81, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "100.000 RPM"				
	end
end
