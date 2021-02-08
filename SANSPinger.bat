title  SANS Pinger
echo off & cls
color 0c
echo                               -::shhhhhhhhhhhhs:-.                              
echo                             .o+++`            .+++o`                            
echo                            `:N.                  -N-`                           
echo                            dy  `////`      `////`  dy                           
echo                            dy  :MMMM.      :MMMM.  dy                           
echo                            hs. -mmmm. .hs. -mmmm. .hs                           
echo                            :sM../`   .ssss`   ./`:Mo:                           
echo                            dd/`:MhyyyyyyyyyyyydM.`/my                           
echo                            ys--.`ys-mh-mh-md-ys`.--yo                           
echo                            /sMMm+++oooooooooo+++mMMs:                           
echo                          -hyhMMMMMNhhhhhhhhhhNMMMMMhyh.                         
echo                         dNmsymo/-yy::::ys::::ys-/smsymMh                        
echo                       .oyyohddhhyyhMs++oo++sMhyyhhddhohyo`                      
echo                       :MsoosyyddyyhM-` .. `:MyyyddyysooyM.                      
echo                       -yyyooooyhmsyMh+    ohMsymhyooooyyy`                      
echo                         :oddhommooyMysssssshMsoommohdd+:                        
echo                           .hmNMmsshMMMMMMMMMMyssNMNms.                          
echo                            :sMMMMMMMMMMMMMMMMMMMMMMo:                           
echo                            dMMMMMMMMMMM+oMMMMMMMMMMMy                           
echo                          `--+MmdddddNh`  `dNdddddmM/--                          
echo                          :Myoo`   .+my    dm+`   .ooyM.                         
echo                          `-yhhhhhhs--.    ---shhhhhhs-`
echo -------------------------------------------------------------------------------------------------------
set /p x=Enter IP Here (Type CTRL + C to end process):
echo.
echo ========================================================
ping %x%
echo ========================================================
@ping.exe (ip address here) -t 8 >nul
echo.
:choice
set /p c=Do you want to exit SANS IP pinger{Y/N}?
if /I "%c%" EQU "y" goto :q
if /I "%c%" EQU "n" goto :w
goto :choice

:q
echo goodbye :)
timeout /t 2 >nul
exit 

:w
:top
PING -n 1 %x% | FIND "TTL="
IF ERRORLEVEL 1 (echo IP Is Now OFFline ...)               
set /a SANS=(%Random%%%9)+1
color %SANS%
ping -t 1 0 10 127.0.0.1 >nul
GoTo top+- 