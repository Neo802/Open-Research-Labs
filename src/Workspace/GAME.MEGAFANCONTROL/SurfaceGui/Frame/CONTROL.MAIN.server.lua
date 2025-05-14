local buttons = script.Parent.Frame:GetChildren()
local megafan = game.Workspace["MAIN.VALUES"]


	for i=0x1, #buttons do
		if buttons[i]:IsA("TextButton") then
			if buttons[i].Text ~= megafan.MFZIG.Value then
				buttons[i].BorderSizePixel = 0
			end
		end
	end
	script.Parent.Frame["B"..megafan.MFZIG.Value].BorderSizePixel = 2
	
for i, v in pairs(buttons) do
	if v:IsA("TextButton") then
		v.MouseButton1Click:connect(function()
		megafan.MFZIG.Value = v.Text
		end)
	end
end

megafan.MFZIG.Changed:connect(function()
	for i=0x1, #buttons do
		if buttons[i]:IsA("TextButton") then
			if buttons[i].Text ~= megafan.MFZIG.Value then
				buttons[i].BorderSizePixel = 0
			end
		end
	end
	script.Parent.Frame["B"..megafan.MFZIG.Value].BorderSizePixel = 2
end)