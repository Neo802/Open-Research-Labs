script.Parent.Touched:connect(function(hit)
	local human = hit.Parent:findFirstChild("Humanoid")
	if (human ~= nil) then
		
		hit.Parent:BreakJoints()
		hit.CFrame = script.Parent.Parent.BH1.CFrame * CFrame.new(0,0,0)
		--human.Health = 0  --How much health is taken away each time its touched, -50 is 50% of your health gone and -100 is 1 touch death (100%) O_o, note that this is the amount of health taken away EACH time its touched...its not just 1 touch and its done :P
        --[[local child = human.Parent:GetChildren() 
        for i = 0x1, #child do
	       if child[i]:IsA("Part") then
		      local fire = Instance.new("Fire")
              if child[i]:FindFirstChild("Fire") == nil then
		      fire.Parent = child[i]
		      end
	       end
        end]]
	end
end)