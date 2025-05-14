local val = game.Workspace["MAIN.VALUES"].CENTRIFUGE
local dn = script.Parent.CONTROL.DN
local st = script.Parent.CONTROL.ST
local up = script.Parent.CONTROL.UP
local motor = script.Parent.MOTOR

function centri()
	if val.Value == 1 then
	    motor.RightParamB = 0
	elseif val.Value == 2 then
		motor.RightParamB = 0.1
	elseif val.Value == 3 then
		motor.RightParamB = 0.3
	elseif val.Value == 4 then
		motor.RightParamB = 0.6
	elseif val.Value == 5 then
		motor.RightParamB = 1
	elseif val.Value == 6 then
		motor.RightParamB = 2	
	elseif val.Value == 7 then
		motor.RightParamB = 3	
	elseif val.Value == 8 then
		motor.RightParamB = 4		
	end
end

up.CD.MouseClick:Connect(function()
	val.Value = val.Value + 1
	centri()
end)

dn.CD.MouseClick:Connect(function()
	val.Value = val.Value - 1
	centri()
end)

st.CD.MouseClick:Connect(function()
	val.Value = 1
	centri()
end)

