local speed = 50
local notifications = game.ReplicatedStorage.Notification
local vals = game.Workspace["MAIN.VALUES"]
vals.CORECODE.Value = 5334118
local codes = {5334118, 
	3441775, 
	6228331}
while true do
	wait(20)
	if script.MODE.Value == 1 then
		game.Workspace["MAIN.SOUNDS"].PIZZADAY["1"]:Play()
		script.TOGGLE.Value = true
		notifications:FireAllClients("Announcement","Don't forget! Today is pizza day so head down to the cafeteria to grab yourself a hot slice!",10,true)
		wait(10)
		script.TOGGLE.Value = false
		script.MODE.Value = script.MODE.Value + 1
	--[[elseif script.MODE.Value == 2 then
		game.Workspace["MAIN.SOUNDS"].PIZZADAY["2"]:Play()
		script.TOGGLE.Value = true
		notifications:FireAllClients("Announcement","Warning! Unauthorized biological forms, detected in Sector C!")
		wait(8.5)
		script.TOGGLE.Value = false
		script.MODE.Value = script.MODE.Value + 1
	elseif script.MODE.Value == 3 then
		game.Workspace["MAIN.SOUNDS"].PIZZADAY["3"]:Play()
		script.TOGGLE.Value = true
		notifications:FireAllClients("Announcement","Security officer reports: men down in Sector D, medics required!")
		wait(9.4)
		script.TOGGLE.Value = false		
		script.MODE.Value = script.MODE.Value + 1]]
	elseif script.MODE.Value == 2 then
		
		script.TOGGLE.Value = true
		vals.CORECODE.Value = codes[math.random(1,#codes)]
		if vals.CORECODE.Value == 5334118 then
			game.Workspace["MAIN.SOUNDS"].PIZZADAY["4"]:Play()
		elseif vals.CORECODE.Value == 3441775 then
			game.Workspace["MAIN.SOUNDS"].PIZZADAY["41"]:Play()
		elseif vals.CORECODE.Value == 6228331 then
			game.Workspace["MAIN.SOUNDS"].PIZZADAY["42"]:Play()
		end
		notifications:FireAllClients("Announcement","Today security code is: "..vals.CORECODE.Value,10,true)
		wait(5.4)
		script.TOGGLE.Value = false		
		script.MODE.Value = 1		
	end
	wait(70)
end