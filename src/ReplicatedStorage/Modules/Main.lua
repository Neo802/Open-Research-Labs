local module = {}

    function module:Convert(currency)
	local converted
	if currency ~= nil then
		if currency >= 10^3 and currency < 10^6 then
			converted = string.sub(currency/10^3,1,#tostring(currency)-1) .."K+"--THOUSANDS
		elseif currency >= 10^6 and currency < 10^9 then
			converted = string.sub(currency/10^6,1,#tostring(currency)-4) .."M+"--MILLIONS
		elseif currency >= 10^9 and currency < 10^12 then
			converted = string.sub(currency/10^9,1,#tostring(currency)-7) .."B+"--BILLIONS
		elseif currency >= 10^12 and currency < 10^15 then
			converted = string.sub(currency/10^12,1,#tostring(currency)-10) .."T+"--MILLIONS
		elseif currency >= 10^15 and currency < 10^18 then
			converted = string.sub(currency/10^15,1,#tostring(currency)-13) .."qd+"--BILLIONS
		elseif currency >= 10^18 and currency < 10^21 then
			converted = string.sub(currency/10^18,1,#tostring(currency)-16) .."Qn+"--MILLIONS
		elseif currency >= 10^21 and currency < 10^24 then
			converted = string.sub(currency/10^21,1,#tostring(currency)-19) .."sx+"--BILLIONS
		elseif currency >= 10^24 and currency < 10^27 then
			converted = string.sub(currency/10^24,1,#tostring(currency)-22) .."Sp+"--BILLIONS
		elseif currency >= 10^27 and currency < 10^30 then
			converted = string.sub(currency/10^27,1,#tostring(currency)-25) .."O+"--BILLIONS
		elseif currency >= 10^30 and currency < 10^33 then
			converted = string.sub(currency/10^30,1,#tostring(currency)-28) .."N+"--BILLIONS
		elseif currency >= 10^33 and currency < 10^36 then
			converted = string.sub(currency/10^33,1,#tostring(currency)-31) .."de+"--DECILLION
		elseif currency >= 10^36 and currency < 10^39 then
			converted = string.sub(currency/10^36,1,#tostring(currency)-34) .."Ud+"--UNDECILLION
		elseif currency >= 10^39 and currency < 10^42 then
			converted = string.sub(currency/10^39,1,#tostring(currency)-37) .."DD+"--DUODECILLION
		elseif currency < 10^3 then
			converted = currency
		end
		return converted
	end
	
	end
		
return module


