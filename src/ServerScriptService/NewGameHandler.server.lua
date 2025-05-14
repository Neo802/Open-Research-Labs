--local badge = require(game.ReplicatedStorage.API)
local b = game:GetService("BadgeService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local debounce = false
local debounce2 = false

function awardbadge(p,kind)
	local id = 0
	local coolantgenplr = game.Workspace["MAIN.VALUES"].COOLANTGENPLAYER.Value
	local coolantplr = game.Workspace["MAIN.VALUES"].COOLANTPLAYER.Value
	
	if typeof(p) == "Instance" then
		if p:IsA("Player") then
			p = p.Name
		end
	end
	
	if kind == "ec" then 
		id = 2130397464
	elseif kind == "eh" then
		id = 2130397467
	elseif kind == "welcome" then
		id = 2130397444
	elseif kind == "melt" then
		id = 2130397455
	elseif kind == "freeze" then
		id = 2130397452
	elseif kind == "survive" then
		id = 2130397446
	elseif kind == "coolantplr" then
		id = 2130397460
	end

	if id == 0 then return end
	if b:UserHasBadge(game.Players:FindFirstChild(p).UserId, id) then
		--
	else
		b:AwardBadge(game.Players:FindFirstChild(p).UserId, id)
	end	
end

game.ReplicatedStorage.Badge.Event:Connect(function(p, kind)
	awardbadge(p,kind)
end)

game.Workspace:WaitForChild("BADGE4ESCAPE").Touched:Connect(function(plr)
	
	if plr.Parent:FindFirstChild("Humanoid") == nil then return end
	
	local pl = game.Players:FindFirstChild(plr.Parent.Name)
	
	
	if game.Workspace["MAIN.VALUES"].MELTDOWN.Value == true or game.Workspace["MAIN.VALUES"].FREEZEDOWN.Value == true then
		if debounce == false then
			debounce = true
			awardbadge(pl,"survive")
			--game.ReplicatedStorage.Badge:Fire(plr.Parent.Name,2130397446)
			wait()
			debounce = false
		end
	end

end)

game.Workspace.Temp.Current.Changed:Connect(function()
	if game.Workspace.Temp.Current.Value >= game.Workspace.Temp.Max.Value then
		if debounce2 == false then
			debounce2 = true
			for i, plr in ipairs(game.Players:GetChildren()) do
				awardbadge(plr.Name,"melt")
			end
			wait(50)
			debounce2 = false
		end
	end
	if game.Workspace.Temp.Current.Value <= game.Workspace.Temp.Freeze.Value then
		if debounce2 == false then
			debounce2 = true
			for i, plr in ipairs(game.Players:GetChildren()) do
				awardbadge(plr.Name,"freeze")
			end
			wait(50)
			debounce2 = false
		end
	end
end)


game.Players.PlayerAdded:Connect(function(plr)
	awardbadge(plr.Name,"welcome")
	
	wait(1)
	
	if plr:IsInGroup(11265895) then
		local items = ReplicatedStorage:FindFirstChild("GroupOnly")
		local starterGear = plr:WaitForChild("StarterGear")
		local backpack = plr:WaitForChild("Backpack")
		wait(1)
		
		for i,v in ipairs(items:GetChildren()) do
			local x = v:Clone()
			x.Parent = starterGear
		end

		for i,v in ipairs(items:GetChildren()) do
			local x = v:Clone()
			x.Parent = backpack
		end
		
		--plr:LoadCharacter()
	end
	
end)