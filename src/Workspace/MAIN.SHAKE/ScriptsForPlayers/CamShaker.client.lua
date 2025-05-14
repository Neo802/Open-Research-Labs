-- Thread-based screen shaker, FOV and CameraOffset manipulation
local cg = workspace:WaitForChild("MAIN.SHAKE")
local power = 1

-- Coroutine A (FOV)
coroutine.resume(coroutine.create(function() 
	while true do
		wait()
		if(cg.ScreenShake.Value)then
			power = cg.ScreenShake.ShakePower.Value
			for i = 1,2 do wait()
				game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView - power
			end
			for i = 1,2 do wait()
				game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView + power
			end 
		end
	end 
end))

-- Coroutine B (CameraOffset)
coroutine.resume(coroutine.create(function() 
	while true do 
		wait(.05)
		if(cg.ScreenShake.Value)then
			power = cg.ScreenShake.ShakePower.Value			
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").CameraOffset = Vector3.new((math.random(1,3)/10)*power,0,0)
			wait(.05)
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").CameraOffset = Vector3.new((-math.random(1,3)/10)*power,0,0)
		end 
	end 
end))

--- Made honestly by cicirici802