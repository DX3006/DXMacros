--By: DX
--Twitter: twitter.com/DX_Nacca
--Twitch: twitch.tv/dx___
--YouTube: youtube.com/canal0gamers


--Activates the setting [ true / false ]
setting = false

--device ID
device = ''

--Automatically minimize [ true / false ]
minimize = false

--when minimize go to Tray [ true / false ]
lmc.minimizeToTray = true

keys = {}
-- Add the commands here --


-- Num Lock off --
keys[33]  = '+{F13}' --Numpad 9
keys[38]  = '+{F14}' --Numpad 8
keys[36]  = '+{F15}' --Numpad 7
keys[39]  = '+{F16}' --Numpad 6
keys[12]  = '+{F17}' --Numpad 5
keys[37]  = '+{F18}' --Numpad 4
keys[34]  = '+{F19}' --Numpad 3
keys[40]  = '+{F20}' --Numpad 2
keys[35]  = '+{F21}' --Numpad 1
keys[45]  = '+{F22}' --Numpad 0
keys[46]  = '+{F23}' --Numpad .


-- Num Lock on --
keys[105] = '+{F24}' --Numpad 9
keys[104] = '^{F13}' --Numpad 8
keys[103] = '^{F14}' --Numpad 7
keys[102] = '^{F15}' --Numpad 6
keys[101] = '^{F16}' --Numpad 5
keys[100] = '^{F17}' --Numpad 4
keys[99]  = '^{F18}' --Numpad 3
keys[98]  = '^{F19}' --Numpad 2
keys[97]  = '^{F20}' --Numpad 1
keys[96]  = '^{F21}' --Numpad 0
keys[110] = '^{F22}' --Numpad .


-- Numpad --
keys[48]  = '^{F23}' --Numpad 000
keys[13]  = '^{F24}' --Enter
keys[107] = '%{F13}' --[ + ]
keys[109] = '%{F14}' --[ - ]
keys[8]   = '%{F15}' --Backspace
keys[106] = '%{F16}' --[ * ]
keys[111] = '%{F17}' --[ / ]
keys[9]   = '%{F18}' --Tab



---------- Dont touch ----------
if( minimize ) then
    lmc_minimize()
end
inicio = false
if(device == '') then
    lmc_assign_keyboard('MACROS')
    dev = lmc_get_devices()
    for key,value in pairs(dev) do
        if( value["Name"] == 'MACROS' )   then
            id= string.sub(string.match(value["SystemId"],"#[0-9a-zA-Z]&[0-9a-zA-Z]*"),4,-1)
            --print("device = '"..id.."'")
            inicio = true
        end
    end
else
	lmc_device_set_name('MACROS',device)
	inicio = true
end

if(inicio) then
	if( setting ) then
		print("-------------[ SETTING MODE ]-------------")
		temp=false
		modifire={'+','^','%'}
		lmc_set_handler('MACROS',function(button, direction)
			if (direction == 1) then return end
			if ( keys[button] == nil and temp) then
				c=0
				tt=true
				while tt do
					f=true
					t= modifire[math.floor(c/12)+1] .. "{F" .. (c%12 + 13) .. "}"
					for i,v in pairs(keys) do
						if( v == t ) and f then
							f=false
						end
					end
					if( f ) then
						tt=false
						keys[button]=t
						print("keys["..button.."]"..string.rep(" ",4-string.len(tostring(button))).. "= '"..t.."' --")
					else
						c=c+1
					end
				end
			end
			temp = true
		end)


	else
		print("-------------[ USE MODE ]-------------")
		lmc_set_handler('MACROS',function(button, direction)
		   if (direction == 1) then return end
		   if ( keys[button] == nil )  then
			  --print('key undefined: ' .. button)
		   else
			   lmc_send_keys(keys[button], 50)
		   end
		end)
	end
else
	print("The device was not found")
end

