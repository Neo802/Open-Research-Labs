while true do
	wait()
	if game.Workspace["MAIN.VALUES"].VOLTAGE.Value == 1 then
	script.Parent.TweeningFrame:TweenSize(UDim2.new(0.11, 0,0.228, 0),"Out","Bounce",1)
	script.Parent.Number.Text = "1%"
	
	elseif game.Workspace["MAIN.VALUES"].VOLTAGE.Value == 2 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.21, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "5%"	
		
		elseif game.Workspace["MAIN.VALUES"].VOLTAGE.Value == 3 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.31, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "10%"	
			
	elseif game.Workspace["MAIN.VALUES"].VOLTAGE.Value == 4 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.41, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "20%"
	elseif game.Workspace["MAIN.VALUES"].VOLTAGE.Value == 5 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.51, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "25%"
	elseif game.Workspace["MAIN.VALUES"].VOLTAGE.Value == 6 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.61, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "50%"
	elseif game.Workspace["MAIN.VALUES"].VOLTAGE.Value == 7 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.71, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "75%"				
	elseif game.Workspace["MAIN.VALUES"].VOLTAGE.Value == 8 then
		script.Parent.TweeningFrame:TweenSize(UDim2.new(0.81, 0,0.228, 0),"Out","Bounce",1)
		script.Parent.Number.Text = "100%"				
	end
end
