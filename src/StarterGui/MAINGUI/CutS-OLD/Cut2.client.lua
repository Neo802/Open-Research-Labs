wait()

--Insert a model called "Track" in here with the shots you've taken.
--This script simply plays back the track for the respective player.

--Start from the original camera position (ie, looking at the player)
from_original_camera_position = false

--Tween back to original camera position
to_original_camera_position = false

--Don't allow player to walk during the cutscene?
freeze_player = false

--Show a GUI? (set to nil if no)
gui = nil --script.CutsceneGui

--Remove GUI when finished?
remove_gui = false

children = function (o) local c = o:GetChildren() local n = #c local i = 0 return function () i = i + 1 if i <= n then return i, c[i] end end end
interpolate = {}

function interpolate.linear(a, t, n0)
	local n0 = n0 or 1
	local v0 = t[n0]
	local v1 = t[n0 + 1] or t[n0]
	return v0 * (1 - a) + v1 * a
end

function interpolate.cosine(a, t, n0)
	local n0 = n0 or 1
	local v0 = t[n0]
	local v1 = t[n0 + 1] or t[n0]
	local f = (1 - math.cos(a * math.pi)) * .5
	return v0 * (1 - f) + v1 * f
end

function interpolate.cubic(a, t, n1)
	local n1 = n1 or 2
	local v0 = t[n1 - 1] or t[n1]
	local v1 = t[n1]
	local v2 = t[n1 + 1] or t[n1]
	local v3 = t[n1 + 2] or t[n1]
	local P = (v3 - v2) - (v0 - v1)
	local Q = (v0 - v1) - P
	local R = v2 - v0
	local S = v1
	return P * math.pow(a, 3) + Q * math.pow(a, 2) + R * a + S
end

function thread(func)
	coroutine.resume(coroutine.create(func))
end

function interpolateV3(func, a, t, n)
	local xs = {}
	local ys = {}
	local zs = {}
	for i, v in ipairs(t) do
		table.insert(xs, v.x)
		table.insert(ys, v.y)
		table.insert(zs, v.z)
	end
	return Vector3.new(func(a, xs, n), func(a, ys, n), func(a, zs, n))
end

function interpolateCF(func, a, t, n)
	local ps = {}
	local lvs = {}
	for i, v in ipairs(t) do
		table.insert(ps, v.p)
		table.insert(lvs, v.lookVector)
	end
	local p = interpolateV3(func, a, ps, n)
	local lv = interpolateV3(func, a, lvs, n)
	return CFrame.new(p, p + lv)
end

function getInterpolator(name)
	if interpolate[name] then
		return interpolate[name]
	else
		print("Unknown interpolator " .. name)
		return interpolate.cosine
	end
end

function playTrack(camera, track)
	--print("Playing track with " .. tostring(camera) .. " and " .. #track .. " shots")
	--track is a table of shots
	local cf = camera.CoordinateFrame
	local fc = camera.Focus
	local fov = camera.FieldOfView
	local roll = camera:GetRoll()
	local free_mode = false
	local focus_part = camera.CameraSubject
	if camera.CameraSubject then free_mode = false end
	local enabled = true
	thread(function ()
		local lfov = fov
		while enabled do
			camera.CoordinateFrame = cf
			if free_mode then
				focus_part.CFrame = fc
			else
				camera.Focus = fc
			end
			camera.FieldOfView = math.max(20, math.min(80, fov))
			camera.CameraType = Enum.CameraType.Scriptable
			camera:SetRoll(roll)
			wait()
		end
	end)
	local cfs = {}
	local fcs = {}
	local fovs = {}
	local rolls = {}
	for i, v in pairs(track) do
		table.insert(cfs, v.CoordinateFrame)
		table.insert(fcs, v.Focus)
		table.insert(fovs, v.FieldOfView)
		table.insert(rolls, v.Roll)
	end
	for n = 1, #track - 1 do
		--print("Shot " .. n .. " to " .. (n + 1))
		local shot_this = track[n]
		--local shot_next = track[n + 1] or track[n]
		--print("Waiting " .. shot_this.Time)
		wait(shot_this.Time)
		local inter = getInterpolator(shot_this.TweenMode)
		local time_start = tick()
		local time = shot_this.TweenTime
		--print("Tweening...")
		while tick() < time_start + time do
			local a = (tick() - time_start) / time
			
			--do the interpolation
			cf = interpolateCF(inter, a, cfs, n)
			fc = interpolateCF(inter, a, fcs, n)
			fov = interpolate.cosine(a, fovs, n)
			roll = interpolate.cosine(a, rolls, n)
			
			wait()
		end
		--print("Done")
	end
	enabled = false
end

function newShot(cf, focus, fov, roll, time, tweenmode, tweentime)
	return {
		CoordinateFrame = cf;
		Focus = focus;
		FieldOfView = fov;
		Roll = roll;
		Time = time;
		TweenMode = tweenmode;
		TweenTime = tweentime;
	}
end

function getShotFromShotData(camera)
	local time = 0
	local tweentime = 2
	local fov = 60
	local tweenmode = "cosine"
	local cf = CFrame.new(0, 0, 0)
	local fc = CFrame.new(0, 0, 1)
	local roll = 0
	
	if camera:FindFirstChild("STime") then					time = camera.STime.Value end
	if camera:FindFirstChild("STweenTime") then			tweentime = camera.STweenTime.Value end
	if camera:FindFirstChild("SFOV") then					fov = camera.SFOV.Value end
	if camera:FindFirstChild("STweenMode") then			tweenmode = camera.STweenMode.Value end
	if camera:FindFirstChild("SCoordinateFrame") then	cf = camera.SCoordinateFrame.Value end
	if camera:FindFirstChild("SFocus") then 				fc = camera.SFocus.Value end
	if camera:FindFirstChild("SRoll") then 				roll = camera.SRoll.Value end
	
	return newShot(cf, fc, fov, roll, time, tweenmode, tweentime)
end

function getFocusPart()
	local p = Instance.new("Part", workspace)
	p.Anchored = true
	p.FormFactor = Enum.FormFactor.Custom
	p.Size = Vector3.new(0.2, 0.2, 0.2)
	p.Transparency = 1
	p.CanCollide = false
	return p
end
function getTrack(p)
	if not p then print("Nothing selected") return end
	local shots = {}
	for k, v in children(p) do
		local n = tonumber(v.Name)
		if n then
			local shot = getShotFromShotData(v)
			shots[n] = shot
		end
	end
	local cc = workspace.CurrentCamera
	local current_shot = newShot(cc.CoordinateFrame, cc.Focus, cc.FieldOfView, cc:GetRoll(), 0, "cosine", 2.5)
	if from_original_camera_position then
		table.insert(shots, 1, current_shot)
	end
	if to_original_camera_position then
		table.insert(shots, current_shot)
	end
	local focus_part = getFocusPart()
	focus_part.CFrame = cc.Focus
	--focus_part.Parent = cc
	workspace.CurrentCamera.CameraType = Enum.CameraType.Fixed
	cc.CameraSubject = focus_part
	--[[local nc = Instance.new("Camera", workspace)
	workspace.CurrentCamera = nc
	cc:Destroy()]]
	local player = game.Players.LocalPlayer
	local char = player.Character
	local ws
	if freeze_player then
		ws = char.Humanoid.WalkSpeed
		char.Torso.Anchored = true
		char.Humanoid.WalkSpeed = 0
		char.Humanoid.PlatformStand = true
	end
	local ngui
	if gui then
		ngui = gui:clone()
		ngui.Parent = player.PlayerGui
	end
	playTrack(workspace.CurrentCamera, shots)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	focus_part:Destroy()
	if freeze_player then
		char.Humanoid.WalkSpeed = ws
		char.Torso.Anchored = false
		char.Humanoid.PlatformStand = false
	end
	if ngui and remove_gui then
		ngui:Destroy()
	end
end

getTrack(script.Track)

--script:Destroy()