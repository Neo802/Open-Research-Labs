while true do
	wait()
	if script.Parent.Value <= 1 then
		script.Parent.Value = 1
		elseif script.Parent.Value >= 8 then
		script.Parent.Value = 8
	end
end