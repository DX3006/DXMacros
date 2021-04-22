![logo](/images/logo.png)
# DXMacros

> A Lua script that turns a Numpad or a Keyboard device into unique keys.
> 
> This script was thought to be used to help Streamers by giving an alternative to the stream deck or to be used in simulators.
> 
>To achieve this, the program suppresses all keys of a selected device and converts them to unused keys(F13 to F24) with the combination of special keys (Shift, Ctrl and Alt), this way having 36 unique key combinations available to be used.
>
>This sctipt suppresses the entire divice so a secondary keyboard or numpad must be used

# Why not use HudMacros
> _HudMacros_ is a program already known for suppressing and remapping the keys, but it fails in many cases by not correctly suppressing the keys.
>
> This way the program can have a few not desired behaviors, for example: pressing a numpad 1 on a youtube video, instead of having the key suppressed, Chrome interprets the key and change the time of the video
>
> _LuaMacros_ solves this problem partially, the number of programs that LuaMacros fails to suppress is much smaller (so far the only program i found that it fails is Discord)

# How to use
#### 1. Downloading LuaMacros
> To use you will need the [LuaMacros](http://www.hidmacros.eu/luamacros.zip) Program
>
> Just download in this [link](http://www.hidmacros.eu/luamacros.zip) or enter the [HudMacros website](http://www.hidmacros.eu/download.php) and download there


#### 2. Downloading DXMacros
> After that you will need to download one of the three available files, each one having a diferent behavior.
> 
> I recommend using the **`DXMacros full numpad.lua`** or **`DXMacros numpad ignore numlock.lua`** file since it already comes with the pre-configured numped
> 
> * DXMacros full numpad.lua:
> > Each key on the numpad is remap to unique key, enable or disable the numlock will result in other keys.
> 
> * DXMacros numpad ignore numlock.lua:
> > Each key on the numpad is remap to unique key independent if numlock is on or off.
> 
> * DXMacros blank.lua
> > that only contains the logic of the program, So that you can add your own keys manually.


#### 3. Configuring _LuaMacros_ and _DXMacros_
> ##### 1. With _LuaMacros_ downloaded, extract the **zip** file
> 
> ##### 2. Run the **LuaMacros.exe**
> 
> ##### 3. open the selected file **`DXMacros... .lua`**
> 
> > ![How to use 1](/images/How_to_use1.png)
> 
> ##### 4. Click play to run the script
> 
> > ![How to use 2](/images/How_to_use2.png)
> 
> ##### 5. Click any key on the numpad to detect which device you want to use
> 
> > ![How to use 3](/images/How_to_use3.png)
>
> ##### 6. The id of the device will appear on the console, so take this id **`device = '1234c123'`** and paste it in the similar field in the code **`line 11`**
> 
> > ![How to use 4](/images/How_to_use4.png)
>
> ##### 7. Save the file and then click on play
> 
> > ![How to use 5](/images/How_to_use5.png)
>
> ##### 8. Done! Now just enter the program you want and use the remapped key
> 
> > ![How to use 6](/images/How_to_use6.png)

#### 4. Making a shortcut to automatically run the file
> ##### 1. create a shortcut to ** LuaMacros.exe ** on the desktop.
> 
> ##### 2. go to the properties of this shortcut in the target option then go to the end of te text and put in quotes the location of the script you downloaded, and at the end of that put **-r** .
>> it should look something like this:
>> 
>> **`"[location of LuaMacros.exe]" "[script file location]" -r`**

#### 5. Adding new keys manually
> If you have taken the file **`DXMacros blank.lua`** or want to add new keys you will need to do the following process
>
> ##### 1. change the setting option to **true**
> 
> > ![How to use 7](/images/How_to_use7.png)
>
> ##### 2. Click the play button
> 
> > ![How to use 8](/images/How_to_use8.png)
> 
> ##### 3. Press the keys you want to map, you will notice that every time you press a key, its registration code will appear on the console
> 
> > ![How to use 9](/images/How_to_use9.png)
>
> ##### 4. copy this code and paste it below the **`-- Add the commands here --`** line
> 
> > ![How to use 10](/images/How_to_use10.png)
>
> ##### 5. change the setting option back to **false**, save the file and press the play button
> 
> > ![How to use 11](/images/How_to_use11.png)

# Contributing
> If you would like to contribute and accelerate the development of this tool, consider making a donation.
> 
> [ ![Paypal]( /images/paypal_button.png ) ](https://dx3006.github.io/DXPN/)


