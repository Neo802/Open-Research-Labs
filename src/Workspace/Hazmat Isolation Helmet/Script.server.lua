-- (Hat Giver Script - Loaded.)

debounce = true

function onTouched(hit)
	if (hit.Parent:findFirstChild("Humanoid") ~= nil and debounce == true) and hit.Parent:findFirstChild("Space Hat") == nil then
		debounce = false
		local childz = hit.Parent:GetChildren()
		for i=0x1,#childz do
			if childz[i]:IsA("Accessory") then
				childz[i]:Remove()
			end
		end
		h = Instance.new("Accessory")
		p = Instance.new("Part")
		h.Name = "Space Hat"
		p.Parent = h
		p.Position = hit.Parent:findFirstChild("Head").Position
		p.Name = "Handle" 
		p.formFactor = 0
		p.Size = Vector3.new(2,2,2) 
		p.BottomSurface = 0 
		p.TopSurface = 0 
		p.Locked = true 
		script.Parent.Mesh:clone().Parent = p
		h.Parent = hit.Parent
		h.AttachmentPos = Vector3.new(0, 0.35, 0)
		wait(5)
		debounce = true
	end
end

script.Parent.Touched:connect(onTouched)

