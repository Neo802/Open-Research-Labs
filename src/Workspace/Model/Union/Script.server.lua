--Made by cicirici802(cicirici76 now)
local a = script.Parent
while true do
wait() 	
timez = 255
	for i = 1, 255,1 do
		a.Color = Color3.new(timez/255,(math.sin(tick())/2)+.5,(255-timez)/255)
		timez = timez - 1		
		wait()
	end
	for i = 255, 1,-1 do
		a.Color = Color3.new(timez/255,(math.sin(tick())/2)+.5,(255-timez)/255)
		timez = timez + 1		
		wait()
	end	
end