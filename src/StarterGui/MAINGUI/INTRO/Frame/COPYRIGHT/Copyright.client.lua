script.Parent.Text = "Copyright © 2021-".. tostring(os.date("%Y")).." GamesCell Historical Archive, all rights reserved."

if tonumber(os.date("%Y")) >= 2025 and tonumber(os.date("%m")) >= 05 and tonumber(os.date("%d")) >= 28 then
	script.Parent.Text = "Open Source under GNU GENERAL PUBLIC LICENSE 3.0, more details on GamesCell Historical Archive."
end