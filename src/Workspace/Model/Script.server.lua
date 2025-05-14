local opened = false;

script.Parent.Open.Touched:Connect(function(hum)
	if opened == false then
		if hum.Parent:FindFirstChild("Humanoid") and hum.Parent:FindFirstChild("Card") then
		opened = true
	script.Parent.Deny.Material = "Neon"
	
		script.Parent.Open.Deny:Play()
	
	wait(1)
	script.Parent.Deny.Material= "SmoothPlastic"
	opened = false
	    end
    end
end)