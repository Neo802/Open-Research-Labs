while true do
	wait()
	if game.Workspace.Temp.Current.Value >= -1999 and game.Workspace.Temp.Current.Value <=1999 then
    script.Parent.Alarm.Transparency = 0.6
    script.Parent.Alarm2.Transparency = 0.6
    script.Parent.Alarm3.Transparency = 0.6
    script.Parent.Alarm4.Transparency = 0.6
    script.Parent.Alarm.Script.Disabled = true
    script.Parent.Alarm2.Script.Disabled = true
    script.Parent.Alarm3.Script.Disabled = true
    script.Parent.Alarm4.Script.Disabled = true
    script.Parent.Main.Alarm1:Stop()
    script.Parent.Main.Alarm2:Stop()
    script.Parent.Main.Alarm3:Stop()
    script.Parent.Main.Alarm4:Stop()
    script.Parent.Main.Alarm5:Stop()
    ----------------------------------------
    elseif game.Workspace.Temp.Current.Value >=-2999 and game.Workspace.Temp.Current.Value <=-2000 then
    script.Parent.Alarm3.Script.Disabled = false
    script.Parent.Alarm4.Script.Disabled = true
    script.Parent.Main.Alarm1:Stop()
    script.Parent.Main.Alarm2:Stop()
    script.Parent.Main.Alarm3:Stop()
    script.Parent.Main.Alarm4:Play()
    script.Parent.Main.Alarm5:Stop()
    ----------------------------------------
    elseif game.Workspace.Temp.Current.Value <=-3000 then
    script.Parent.Alarm3.Script.Disabled = false
    script.Parent.Alarm4.Script.Disabled = false
    script.Parent.Main.Alarm1:Stop()
    script.Parent.Main.Alarm2:Stop()
    script.Parent.Main.Alarm3:Stop()
    script.Parent.Main.Alarm4:Play()
    script.Parent.Main.Alarm5:Play()
    ----------------------------------------
    elseif game.Workspace.Temp.Current.Value >=2000 and game.Workspace.Temp.Current.Value <=2499 then
    script.Parent.Alarm.Script.Disabled = false
    script.Parent.Alarm2.Script.Disabled = true
    script.Parent.Main.Alarm1:Play()
    script.Parent.Main.Alarm2:Stop()
    script.Parent.Main.Alarm3:Stop()
    script.Parent.Main.Alarm4:Stop()
    script.Parent.Main.Alarm5:Stop()
    ----------------------------------------
    elseif game.Workspace.Temp.Current.Value >=2500 and game.Workspace.Temp.Current.Value <=2999 then
	script.Parent.Alarm.Script.Disabled = false
    script.Parent.Alarm2.Script.Disabled = false
    script.Parent.Main.Alarm1:Play()
    script.Parent.Main.Alarm2:Play()
    script.Parent.Main.Alarm3:Stop()
    script.Parent.Main.Alarm4:Stop()
    script.Parent.Main.Alarm5:Stop()
    ----------------------------------------
	elseif game.Workspace.Temp.Current.Value >=3000 and game.Workspace.Temp.Current.Value <=3999 then
	script.Parent.Alarm.Script.Disabled = false
    script.Parent.Alarm2.Script.Disabled = false
    script.Parent.Main.Alarm1:Play()
    script.Parent.Main.Alarm2:Play()
    script.Parent.Main.Alarm3:Play()
    script.Parent.Main.Alarm4:Stop()
    script.Parent.Main.Alarm5:Stop()
    ----------------------------------------
	elseif game.Workspace.Temp.Current.Value >=4000 then
	script.Parent.Alarm.Script.Disabled = false
    script.Parent.Alarm2.Script.Disabled = false
    script.Parent.Main.Alarm1:Play()
    script.Parent.Main.Alarm2:Play()
    script.Parent.Main.Alarm3:Play()	
    script.Parent.Main.Alarm4:Stop()
    script.Parent.Main.Alarm5:Stop()
    ----------------------------------------
	end
    wait(5)
end