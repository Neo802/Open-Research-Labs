local Months ={'January','February','March','April','May','June','July','August','September','October','November','December'}
local daysinmonth = {31,28,31,30,31,30,31,31,30,31,30,31}
local ctime = os.time()
local year = math.floor(ctime/60/60/24/365.25+1970)
local day = math.ceil(ctime/60/60/24%365.25)
local datatext = ""
for k, dim in pairs(daysinmonth) do
    if day > dim then
        day = day - dim
    else
        month = Months[k]
        break
    end
end 
if day < 10 then day = '0' .. tostring(day);end

script.Parent.Frame.SAFE.DATE.Text = day.." "..month.." "..year
