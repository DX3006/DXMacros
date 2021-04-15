--By: DX
--Twitter: twitter.com/DX_Nacca
--Twitch: twitch.tv/dx___
--YouTube: youtube.com/canal0gamers


--Activates the setting [ true / false ]
setting = true

--device ID
device = ''

--Automatically minimize [ true / false ]
minimize = false

teclas = {}
-- Add the commands here --




---------- Dont touch ----------
if( minimize ) then
    lmc.minimizeToTray = true
    lmc_minimize()
end
inicio = false
if(device == '') then
    lmc_assign_keyboard('MACROS')
    dev = lmc_get_devices()
    for key,value in pairs(dev) do
        if( value["Name"] == 'MACROS' )   then
            id= string.sub(string.match(value["SystemId"],"#[0-9a-zA-Z]&[0-9a-zA-Z]*"),4,-1)
            print("device = '"..id.."'")
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
			if ( teclas[button] == nil and temp) then
				c=0
				tt=true
				while tt do
					f=true
					t= modifire[math.floor(c/12)+1] .. "{F" .. (c%12 + 13) .. "}"
					for i,v in pairs(teclas) do
						if( v == t ) and f then
							f=false
						end
					end
					if( f ) then
						tt=false
						teclas[button]=t
						print("teclas["..button.."]"..string.rep(" ",4-string.len(tostring(button))).. "= '"..t.."' --")
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
		   if ( teclas[button] == nil )  then
			  print('Não definido: ' .. button)
		   else
			   lmc_send_keys(teclas[button], 50)
		   end
		end)
	end
else
	print("The device was not found")
end

