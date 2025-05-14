local mouse = game.Players.LocalPlayer:GetMouse()
local running = false
local market = game:GetService("MarketplaceService")
local plr = game.Players.LocalPlayer
local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:connect(function(input, processed)
	if input.UserInputType == Enum.UserInputType.Gamepad1 then
		if input.KeyCode == Enum.KeyCode.ButtonX then
		    running = true
		    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
		end
	elseif input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
			running = true
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
		end
	end
end)


userInputService.InputEnded:connect(function(input, processed)
	if input.UserInputType == Enum.UserInputType.Gamepad1 then
		if input.KeyCode == Enum.KeyCode.ButtonX then
		    running = false
		    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end
	elseif input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
			running = false
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end
	end
end)