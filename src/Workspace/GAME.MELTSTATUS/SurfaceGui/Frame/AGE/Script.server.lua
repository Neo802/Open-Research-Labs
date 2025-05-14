while true do
	wait()
	local seconds = math.floor(workspace.DistributedGameTime)
	local minutes = math.floor(workspace.DistributedGameTime / 60)
	local hours = math.floor(workspace.DistributedGameTime / 60 / 60)
	local seconds = seconds - (minutes * 60)
	local minutes = minutes - (hours * 60)
	if hours < 1 then
		if minutes < 1 then
			script.Parent.Text = seconds .. " SEC"
		else
			script.Parent.Text = minutes .. " MIN, " .. seconds .. " SEC"
		end
	else
		script.Parent.Text = hours .. " HR, " .. minutes .. " MIN, " .. seconds .. " SEC"
	end
end