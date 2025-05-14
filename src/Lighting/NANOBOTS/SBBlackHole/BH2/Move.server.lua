while true do
	wait()
	for i=1,30 do
		script.Parent.Parent.BH1.Size = script.Parent.Parent.BH1.Size + Vector3.new(0.4,0.4,0.4)
		script.Parent.Parent.BH2.Size = script.Parent.Parent.BH2.Size + Vector3.new(0.4,0.4,0.4)
		wait()
	end
end