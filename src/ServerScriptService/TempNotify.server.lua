NOTIFICATION = game.ReplicatedStorage.Notification
local debounce = false

game.Workspace.Temp.Current.Changed:Connect(function()
	wait()
	if debounce == false then
		debounce = true
		if game.Workspace.Temp.Current.Value >= 3600 and game.Workspace["MAIN.VALUES"].MELTDOWN.Value == false then
	        NOTIFICATION:FireAllClients("CORE TEMP STATUS", "The core is overheating! Please activate the coolants!")
		    wait(50)
		elseif game.Workspace.Temp.Current.Value <= -3600 and game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value == false then
	        NOTIFICATION:FireAllClients("CORE TEMP STATUS", "The core is freezing! Please turn off the coolants!")
		    wait(50)
		end
		debounce = false
	end
end)