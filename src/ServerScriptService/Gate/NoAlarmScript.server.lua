while true do
	wait()
	if game.Workspace.Temp.Current.Value <= 2999 then
		local WarningLights ={}for i,v in pairs(workspace:GetChildren())do if v.Name=="Alarm"then table.insert(WarningLights,v)end end
		for i,WarningLight in pairs(WarningLights) do  

			WarningLight.Toggle.Value = false

		end
	end
end