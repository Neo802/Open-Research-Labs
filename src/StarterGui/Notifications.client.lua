-- Made by GamesCell
-- October 20th 2020

--local setting = script.Parent.Parent.GUI.SETTINGS
local marketservice = game:GetService("MarketplaceService")

game.ReplicatedStorage.RemoteEvents.Notify.OnClientEvent:Connect(function(title,msg,dur)
	--sounds.Notify:Play()
	game.StarterGui:SetCore("SendNotification", {
		Title = title; 
		Text = msg; 
		Duration = dur or 10; 
		Button1 = "Close";
	})
end)

game.ReplicatedStorage.RemoteEvents.ChatNotify.OnClientEvent:Connect(function(plrname,msg,font)
	if game.Players:FindFirstChild(plrname) then
		game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text=tostring(plrname..msg)})
	else
		local color = Color3.fromRGB(255, 255, 255)
		if typeof(msg) == "Color3" then
			color = msg
		end
		if typeof(font) == "string" then
			font = "SourceSansSemibold"
		else
			font = "SourceSans"
		end
		game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text=tostring(plrname), Color = color})
	end
end)