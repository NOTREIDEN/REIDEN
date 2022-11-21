@echo off

title Macro Scanner - By Technostein

color 3

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

if exist "%localappdata%\LGHUB" (

explorer "%localappdata%\LGHUB"

forfiles /P "%localappdata%\LGHUB" /C "cmd /c echo %g%[@fdate] [@ftime] @path"

echo %g%LGHUB found

) else (

echo %r%No Logitech products%u%

)

if exist "%programdata%\Razer\Synapse\Accounts" (

explorer "%programdata%\Razer\Synapse\Accounts"

forfiles /P "%programdata%\Razer\Synapse\Accounts" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Razer Synapse detected

) else (

echo %r%No Razer products%u%

)

if exist "C:\ProgramData\Razer\Synapse3\Log" (

explorer "C:\ProgramData\Razer\Synapse3\Log"

forfiles /P "C:\ProgramData\Razer\Synapse3\Log" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Razer Turbo mode logs

) else (

echo %r%No Razer Turbo

)

if exist "%localappdata%\Razer\Synapse3\Settings" (

explorer "%localappdata%\Razer\Synapse3\Settings"

forfiles /P "%localappdata%\Razer\Synapse3\Settings" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Synapse settings

) else (

echo %r%No Razer Synapse

)

if exist "%programdata%\Razer\Razer Central\Accounts" (

explorer "%programdata%\Razer\Razer Central\Accounts"

forfiles /P "%programdata%\Razer\Razer Central\Accounts" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Razer account macros

) else (

echo %r%No Razer products

)

if exist "%appdata%\Corsair\Cue" (

explorer "%appdata%\Corsair\Cue"

forfiles /P "%appdata%\Corsair\Cue" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Corsair softwares

) else (

echo %r%No Corsair products

)

if exist "%localappdata%\BY-COMBO2" (

explorer "%localappdata%\BY-COMBO2"

forfiles /P "%localappdata%\BY-COMBO2" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Glorious found

) else (

echo %r%No Model O

)

if exist "C:\Program Files (x86)\Bloody7\Bloody7\Data\Mouse" (

explorer "C:\Program Files (x86)\Bloody7\Bloody7\Data\Mouse"

forfiles /P "C:\Program Files (x86)\Bloody7\Bloody7\Data\Mouse" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Bloody7 - method one

) else (

echo %r%No Bloody softwares

)

if exist "C:\Program Files (x86)\Bloody7\Bloody7\UserLog\Mouse\TLcir_9EFF3FF4" (

explorer "C:\Program Files (x86)\Bloody7\Bloody7\UserLog\Mouse\TLcir_9EFF3FF4"

forfiles /P "C:\Program Files (x86)\Bloody7\Bloody7\UserLog\Mouse\TLcir_9EFF3FF4" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Bloody7 - secondary method

) else (

echo %r%No bloody softwares

)

if exist "C:\Users%username%\AppData\Roaming\REDRAGON\GamingMouse" (

explorer "C:\Users%username%\AppData\Roaming\REDRAGON\GamingMouse"

forfiles /P "C:\Users%username%\AppData\Roaming\REDRAGON\GamingMouse" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Redragon products detected

) else (

echo %r%No Reddragon products

)

if exist "C:\Users%USERNAME%\Documents\M711 Gaming Mouse" (

explorer "C:\Users%USERNAME%\Documents\M711 Gaming Mouse"

forfiles /P "C:\Users%USERNAME%\Documents\M711 Gaming Mouse" /C "cmd /c %g%echo [@fdate] [@ftime] @path"

echo %g%Redragon M711 detected

) else (

echo %r%No Redragon M711 detected

)

if exist "C:\users\%username%\documents\ASUS\ROG\ROG Armoury\common\" (

explorer "C:\users\%username%\documents\ASUS\ROG\ROG Armoury\common\"

forfiles /P "C:\users\%username%\documents\ASUS\ROG\ROG Armoury\common\" /C "cmd /c echo %g%[@fdate] [@ftime] @path"

echo %g%Armory found

) else (

echo %r%No ASUS products%u%

)

if exist "C:\Blackweb Gaming AP\config" (

explorer "C:\Blackweb Gaming AP\config"

forfiles /P "C:\Blackweb Gaming AP\config" /C "cmd /c echo %g%[@fdate] [@ftime] @path"

echo %g%Blackweb

) else (

echo %r%NoBlackweb%u%

)

if exist "C:\Program Files (x86)\CoolerMaster\MasterPlus" (

explorer "C:\Program Files (x86)\CoolerMaster\MasterPlus"

forfiles /P "C:\Program Files (x86)\CoolerMaster\MasterPlus" /C "cmd /c echo %g%[@fdate] [@ftime] @path"

echo %g%Cooler

) else (

echo %r%No Cooler%u%

)

if exist "C:\Program Files (x86)\Driver Nombredemouse\INI_CN\" (

explorer "C:\Program Files (x86)\Driver Nombredemouse\INI_CN\"

forfiles /P "C:\Program Files (x86)\Driver Nombredemouse\INI_CN\" /C "cmd /c echo %g%[@fdate] [@ftime] @path"

echo %g%Nombre

) else (

echo %r%No Nombre%u%

)

if exist "C:\Program Files (x86)\MARSGAMING\MMGX\modules\macro" (

explorer "C:\Program Files (x86)\MARSGAMING\MMGX\modules\macro"

forfiles /P "C:\Program Files (x86)\MARSGAMING\MMGX\modules\macro" /C "cmd /c echo %g%[@fdate] [@ftime] @path"

echo %g%MARS

) else (

echo %r%No MARS%u%

)

if exist "C:\Program Files (x86)\MotoSpeed Gaming Mouse\V60\modules\" (

explorer "C:\Program Files (x86)\MotoSpeed Gaming Mouse\V60\modules\"

forfiles /P "C:\Program Files (x86)\MotoSpeed Gaming Mouse\V60\modules\" /C "cmd /c echo %g%[@fdate] [@ftime] @path"

echo %g%MotoSpeed

) else (

echo %r%MotoSpeed%u%

)

if exist "C:\Users\%username%\AppData\Local\VirtualStore\Program Files (x86)\KROM KOLT\Config" (

explorer "C:\Users\%username%\AppData\Local\VirtualStore\Program Files (x86)\KROM KOLT\Config"

forfiles /P "C:\Users\%username%\AppData\Local\VirtualStore\Program Files (x86)\KROM KOLT\Config" /C "cmd /c echo %g%[@fdate] [@ftime] @path"

echo %g%Kolt

) else (

echo %r%No Kolt%u%

)

if exist "C:\Users\%username%\AppData\Local\VirtualStore\Program Files (x86)\KROM KOLT\Config" (

explorer "C:\Users\%username%\AppData\Local\VirtualStore\Program Files (x86)\KROM KOLT\Config"

forfiles /P "C:\Users\%username%\AppData\Local\VirtualStore\Program Files (x86)\KROM KOLT\Config" /C "cmd /c echo %g%[@fdate] [@ftime] @path"

echo %g%Kolt

) else (

echo %r%No Kolt%u%

)

exit