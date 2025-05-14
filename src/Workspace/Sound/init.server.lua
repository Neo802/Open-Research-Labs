---This server script creates the sounds and also exists so that it can be easily copied into an NPC and create sounds for that NPC. 
--Remove the local script if you copy this into an NPC.
--humanoidSoundNewLocal.rbxmx--

function newSound(name, id)
	local sound = Instance.new("Sound")
	sound.SoundId = id
	sound.Name = name
	sound.archivable = false
	sound.Parent = script.Parent.Head
	return sound
end

-- declarations

local sGettingUp = newSound("GettingUp", "rbxasset://sounds/action_get_up.mp3")
local sDied = newSound("Died", "rbxasset://sounds/uuhhh.mp3") 
local sFreeFalling = newSound("FreeFalling", "rbxasset://sounds/action_falling.mp3")
local sJumping = newSound("Jumping", "rbxasset://sounds/action_jump.mp3")
local sLanding = newSound("Landing", "rbxasset://sounds/action_jump_land.mp3")
local sSplash = newSound("Splash", "rbxasset://sounds/impact_water.mp3")
local sRunning = newSound("Running", "rbxasset://sounds/action_footsteps_plastic.mp3")
sRunning.Looped = true
local sSwimming = newSound("Swimming", "rbxasset://sounds/action_swim.mp3")
sSwimming.Looped = true
local sClimbing = newSound("Climbing", "rbxasset://sounds/action_footsteps_plastic.mp3")
sClimbing.Looped = true

