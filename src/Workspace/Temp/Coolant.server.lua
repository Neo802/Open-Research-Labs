
local timez = game.Workspace["MAIN.VALUES"].TIME.Value 

while true do
	wait()
	------------------------------------------------------------------

	if game.Workspace.Coolant.Ready.Value == true then
		wait(timez)
		script.Parent.Previous.Value = script.Parent.Current.Value
		script.Parent.Current.Value = script.Parent.Current.Value - 20
	elseif game.Workspace.Coolant.Ready.Value == false then
		wait(timez)
		script.Parent.Previous.Value = script.Parent.Current.Value
		script.Parent.Current.Value = script.Parent.Current.Value + 20
	end
	
	------------------------------------------------------------------
	
	if game.Workspace["MAIN.VALUES"].MFZIG.Value == 0 then
		wait(timez)
		script.Parent.Previous.Value = script.Parent.Current.Value
		script.Parent.Current.Value = script.Parent.Current.Value + 20
    elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 1 then
		wait(timez)
		script.Parent.Previous.Value = script.Parent.Current.Value
		script.Parent.Current.Value = script.Parent.Current.Value + 0	
    elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 2 then
		wait(timez)
		script.Parent.Previous.Value = script.Parent.Current.Value
		script.Parent.Current.Value = script.Parent.Current.Value - 10	
    elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 3 then
		wait(timez)
		script.Parent.Previous.Value = script.Parent.Current.Value
		script.Parent.Current.Value = script.Parent.Current.Value - 20	
    elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 4 then
		wait(timez)
		script.Parent.Previous.Value = script.Parent.Current.Value
		script.Parent.Current.Value = script.Parent.Current.Value - 30
    elseif game.Workspace["MAIN.VALUES"].MFZIG.Value == 5 then
		wait(timez)
		script.Parent.Previous.Value = script.Parent.Current.Value
		script.Parent.Current.Value = script.Parent.Current.Value - 50						
	end
	 
	wait(timez)
	script.Parent.Previous.Value = script.Parent.Current.Value
	script.Parent.Current.Value = script.Parent.Current.Value + (5 * game.Workspace["MAIN.VALUES"].POWER.Value)	
	script.Parent.Current.Value = script.Parent.Current.Value + (5 * game.Workspace["MAIN.VALUES"].VOLTAGE.Value)
	
	------------------------------------------------------------------
end