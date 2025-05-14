local butchild = script.Parent.BUTTONS:GetChildren()
local buttons = script.Parent.BUTTONS
local vents = game.Workspace["GAME.MEGAVENTS"]


for i, v in pairs(butchild) do
	if v:FindFirstChild("ClickDetector") and v:FindFirstChild("V") then
		v.ClickDetector.MouseClick:connect(function()
			if v.Used.Value == false then
			if game.Workspace["GAME.MEGAVENTS"]["MegaVent"..v.V.Value].Activated.Value == false then
            v.Used.Value = true			
			v.Sound:Play()
			v.Mesh.Offset = Vector3.new(0,-0.3,0)
	        wait(.1)
	        v.Mesh.Offset = Vector3.new(0,0,0)
	        game.Workspace["GAME.MEGAVENTS"]["MegaVent"..v.V.Value].Activated.Value = true
	        wait(20)
            v.Used.Value = false
       
			elseif game.Workspace["GAME.MEGAVENTS"]["MegaVent"..v.V.Value].Activated.Value == true then
			v.Used.Value = true		
			v.Sound:Play()
			v.Mesh.Offset = Vector3.new(0,-0.3,0)
	        wait(.1)
	        v.Mesh.Offset = Vector3.new(0,0,0)
	        game.Workspace["GAME.MEGAVENTS"]["MegaVent"..v.V.Value].Activated.Value = false
	        wait(20)
	        v.Used.Value = false
	        	end
	        end        
		end)
	end
end