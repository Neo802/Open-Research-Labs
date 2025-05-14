game.ReplicatedStorage.Shake.OnServerEvent:connect(function(plr,loud)
    game.Workspace["MAIN.SHAKE"].ScreenShake.ShakePower.Value = loud/150
end)