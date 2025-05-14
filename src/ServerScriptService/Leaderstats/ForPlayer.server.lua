script.Parent.Value = script.Parent.Parent.Parent.Money.Value

script.Parent.Parent.Parent.Money.Changed:Connect(function()
	if script.Parent.Parent.Parent.Money.Value >= 1000 then
		script.Parent.Value = string.sub(script.Parent.Parent.Parent.Money.Value,3,#script.Parent.Parent.Parent.Money.Value-1).."K+"
	elseif script.Parent.Parent.Parent.Money.Value >= 1000000 then
		script.Parent.Value = string.sub(script.Parent.Parent.Parent.Money.Value,6,#script.Parent.Parent.Parent.Money.Value-1).."M+"
	elseif script.Parent.Parent.Parent.Money.Value >= 1000000000 then
		script.Parent.Value = string.sub(script.Parent.Parent.Parent.Money.Value,9,#script.Parent.Parent.Parent.Money.Value-1).."B+"
	elseif script.Parent.Parent.Parent.Money.Value < 1000 then
		script.Parent.Value = script.Parent.Parent.Parent.Money.Value
	end
end)