------------------------------------------------------
--- WELCOME TO PROJECT REVOLUTION BY GAMESCELL     ---
------------------------------------------------------

-- Settings file is the main configuration of my admin system. At this point is pretty small, but soon, there will be plenty.
																																																										local module = {}

module.Owner = {481225191} -- userid1, userid2 and so on, complete privillege
module.Admins = {} -- same as the owner when assigning, less privilleges

module.Group = 0 -- Generally your own group or the group you collaborate with
module.Rank = 255 -- Rank requires to be an administrator

module.Prefix = ":"
module.FreeAdmin = false -- Don't enable this unless you wanna create a free admin game

-- Playerlist --
module.PlayerList = false -- Pretty basic at the moment, gets the job done
-- If the playerlist is enabled, you can choose a variety of colors for three main elements of it, or simply leave it to default
module.PlayerListBackgroundColor = Color3.fromRGB(0, 0, 0)
module.PlayerListPlayerColor = Color3.fromRGB(35, 35, 35)
module.PlayerListButtonColor = Color3.fromRGB(35, 35, 35)
module.PlayerListTextColor = "white" -- Pretty limited here, I know, but is better to look more elegant, than horrible. Options: white or dark. Icon textures will also change their color as well.

-- Help UI --
module.HelpUI = false -- Want to support our admin system? Simply enable this.

-- AdminDebug --
module.AdminDebug = true -- This gives to the admin creator the commands. Completely optional, you can turn it off if you want.

module.Banlist = { -- ['username1'] = userid1; ['username2'] = userid2; ['username3'] = userid2;
}

module.GroupsBan = { -- groupid1; groupid2; groupid3; ...
}

																																																											return module
-- Thank you for using Project Revolution. The Revolution be with you!