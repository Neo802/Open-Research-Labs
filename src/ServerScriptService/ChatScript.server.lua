DSS = game:GetService("DataStoreService")
GamepassService = game:GetService("GamePassService")
MarketService = game:GetService("MarketplaceService")

game:GetService("Players").PlayerAdded:Connect(function(player)
	repeat wait() until game:GetService("ServerScriptService"):FindFirstChild("ChatServiceRunner")
        local ChatService = require(game:GetService("ServerScriptService").ChatServiceRunner.ChatService)
		
		repeat wait() until ChatService
		repeat wait() until ChatService:GetSpeaker(tostring(player.Name))
		
		local Speaker = ChatService:GetSpeaker(tostring(player.Name))

		if player.UserId == 481225191 then
			local Speaker = ChatService:GetSpeaker(tostring(player.Name))
			Speaker:SetExtraData("ChatColor", Color3.fromRGB(255, 153, 0))
		    Speaker:SetExtraData("Tags", {{TagText = "Programmer", TagColor = Color3.fromRGB(255, 51, 0)}})
		end
	
end)