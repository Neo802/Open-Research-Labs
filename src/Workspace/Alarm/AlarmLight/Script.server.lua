while true do
	wait()
	for i =1,30 do
		script.Parent:SetPrimaryPartCFrame(script.Parent.PrimaryPart.CFrame * CFrame.Angles(0,0.1,0))
		wait()
	end
end