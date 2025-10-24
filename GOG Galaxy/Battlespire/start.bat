@ECHO OFF
cls
mount c "."
mount C ".\cloud_saves" -t overlay
imgmount d ".\game.ins" -t iso
c:
goto launcher

:launcher
cls
ECHO [1;33m[42mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO º ------------------------------------------ º
ECHO º  Elder Scrolls: Battlespire Launcher       º
ECHO º ------------------------------------------ º
ECHO º  1) An Elder Scrolls Legend: Battlespire   º
ECHO º  2) Game DOS Settings                      º
ECHO º ------------------------------------------ º
ECHO º  3) exit program                           º
ECHO º ------------------------------------------ º
ECHO ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼[0m

choice /c123 /s Which program do you want to run? [1-3]: /n 
if errorlevel 3 goto exit
if errorlevel 2 goto setup
if errorlevel 1 goto game

:setup
cls
install.exe
goto launcher

:game
cls
spire.bat
goto exit

:exit
exit
