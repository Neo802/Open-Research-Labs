local butchild = script.Parent.Buttons:GetChildren()
--local child = script.Parent.Buttons:GetChildren()

for i = 0x1, #butchild do
for i,v in pairs(butchild[i]:GetChildren()) do
	if v and v:FindFirstChild("ClickDetector") then
		v.ClickDetector.MouseClick:connect(function(body)
			body.Character.HumanoidRootPart.CFrame = script.Parent["Floor"..v.Name].Floor.CFrame + Vector3.new(0,1,0)
		end)
	end
end
end