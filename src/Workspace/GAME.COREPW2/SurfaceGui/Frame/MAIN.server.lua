local child = script.Parent:GetChildren()
local colorred = Color3.fromRGB(170, 0, 0)
local colorgreen = Color3.fromRGB(85, 170, 0)

game.Workspace["MAIN.VALUES"].GENERATOR.ACTIVATED.Changed:connect(function()
	local active = game.Workspace["MAIN.VALUES"].GENERATOR.ACTIVATED.Value
	
	if active == true then
		for i=0x1,#child do
			if child[i].Name == "FrameUP" then
				child[i].BackgroundColor3 = colorred
			end
			if child[i].Name == "FrameDN" then
				child[i].BackgroundColor3 = colorgreen
			end
		end
		script.Parent.Frame1.BackgroundColor3 = colorred
		script.Parent.Frame2.BackgroundColor3 = colorgreen
		
	elseif active == false then
		for i=0x1,#child do
			if child[i].Name == "FrameUP" then
				child[i].BackgroundColor3 = colorgreen
			end
			if child[i].Name == "FrameDN" then
				child[i].BackgroundColor3 = colorred
			end
		end
		script.Parent.Frame1.BackgroundColor3 = colorgreen
		script.Parent.Frame2.BackgroundColor3 = colorred
	end	
end)