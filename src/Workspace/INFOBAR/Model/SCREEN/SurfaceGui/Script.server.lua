x = 0
childs = script.Parent.Frames:GetChildren()
while wait(0.1) do
	script.Parent.LOAD.L.Size = UDim2.new(1,0,1,0)
	if x > #childs-1 then
		x = 0
	end
	--
	for i=0x1,#childs-1 do
		if childs[i].Name == "FRAME"..x then
			childs[i].Visible = true
		else
			childs[i].Visible = false
		end
	end
	
	script.Parent.LOAD.L:TweenSize(UDim2.new(0,0,1,0),1,3,10)
	x = x + 1
	wait(10)
	script.Parent.LOAD.L.Size = UDim2.new(1,0,1,0)
end