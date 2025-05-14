local MELTSOUND = workspace["MAIN.SOUNDS"].MELTDOWN
local VALUES = workspace["MAIN.VALUES"]
local MainSound,SecondarySound,NukeSound,shaky,EC = MELTSOUND.BackgroundTheme, MELTSOUND.CountdownTheme, MELTSOUND.NuclearBackground, game.Workspace:WaitForChild("MAIN.SHAKE").ScreenShake.ExecuteShake,MELTSOUND.EmergencyCoolantOST

game:GetService('RunService').Heartbeat:connect(function(test)
	wait()	
	if VALUES.COUNTDOWN.Value == false and VALUES.EXPLODED.Value == false and VALUES.EMERGENCYCOOLANT.Value == false then
	    shaky.Value = MainSound.PlaybackLoudness
	    game.ReplicatedStorage.Shake:FireServer(shaky.Value)
	elseif VALUES.COUNTDOWN.Value == true and VALUES.EXPLODED.Value == false and VALUES.EMERGENCYCOOLANT.Value == false then
	    shaky.Value = SecondarySound.PlaybackLoudness
	    game.ReplicatedStorage.Shake:FireServer(shaky.Value)
	elseif VALUES.COUNTDOWN.Value == false and VALUES.EXPLODED.Value == false and VALUES.EMERGENCYCOOLANT.Value == true then
	    shaky.Value = EC.PlaybackLoudness
	    game.ReplicatedStorage.Shake:FireServer(shaky.Value)		
	elseif VALUES.EXPLODED.Value == true then
 	    shaky.Value = NukeSound.PlaybackLoudness
        game.ReplicatedStorage.Shake:FireServer(shaky.Value)
	end	
end)