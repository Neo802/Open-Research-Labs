

game.Players.PlayerAdded:connect(function(h)
	h.CharacterAdded:connect(function()
		--for i,v in pairs(script:GetChildren())do
			if h.PlayerGui:FindFirstChild("CamShaker") == nil then
			local d = script.CamShaker:Clone() 
			d.Parent = h.PlayerGui
			d.Disabled = false
			end
		--end
		end)
end)