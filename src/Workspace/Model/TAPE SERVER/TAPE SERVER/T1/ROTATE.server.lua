while wait(0.1) do
	for i=1,30 do
		script.Parent:SetPrimaryPartCFrame(script.Parent.PrimaryPart.CFrame * CFrame.Angles(0,0,-0.1))
		wait()
	end
end