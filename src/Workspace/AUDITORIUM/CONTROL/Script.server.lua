local child = script.Parent.SurfaceGui.MAIN:GetChildren()

for i,v in pairs(child) do
	if v and v:FindFirstChild("Value") then
		v.Click.MouseButton1Click:connect(function()
			if script.Parent.Parent.CONFIG[v.Value.Value].Value == false then
				v.Click:TweenPosition(UDim2.new(0.07, 0,0.133, 0))
				v.Click.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
				script.Parent.Parent.CONFIG[v.Value.Value].Value = true 
				
			else	
				v.Click:TweenPosition(UDim2.new(0.5, 0,0.133, 0))
				v.Click.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
				script.Parent.Parent.CONFIG[v.Value.Value].Value = false 
				
			end
		end)
	end
end