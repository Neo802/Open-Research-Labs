while true do
	wait()
	if game.Workspace["MAIN.VALUES"].CENTRIFUGE.Value >= 6 then
		for i=1,30 do
			script.Parent.TextTransparency = script.Parent.TextTransparency - 0.05
			wait()
		end
		for i=1,30 do
			script.Parent.TextTransparency = script.Parent.TextTransparency + 0.05
			wait()
		end
	else
		script.Parent.TextTransparency = 1
	end
end