game.ReplicatedStorage.Notification.OnClientEvent:Connect(function(title,msg,dur,val)
	if script.Parent.VALUES.Intro.Value == false and script.Parent.VALUES.General.DoNoDist.Value == false then
	game.StarterGui:SetCore("SendNotification", {
    Title = title; 
    Text = msg; 
    Duration = dur or 10; 
    Button1 = "Close";
	})
    local chatt = val or false;
	if chatt == true then
	game:service("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="[System]: "..msg})
	end
	end
end)
