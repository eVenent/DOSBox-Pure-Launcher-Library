# Lines in this section will be run at startup.
@echo off
mount c ".."
mount C "..\cloud_saves" -t overlay
imgmount d "..\war1.cue" -t iso
c:
goto launcher

:launcher
cls
ECHO [1;33m[42mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO º ------------------------------------------ º
ECHO º  WarCraft Launcher                         º
ECHO º ------------------------------------------ º
ECHO º  1) WarCraft: Orcs & Humans                º
ECHO º  2) Game DOS Settings                      º
ECHO º ------------------------------------------ º
ECHO º  3) exit program                           º
ECHO º ------------------------------------------ º
ECHO ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼[0m

choice /c123 /s Which program do you want to run? [1-3]: /n 
if errorlevel 3 goto exit
if errorlevel 2 goto setup
if errorlevel 1 goto game

:game
cls
war.exe
goto exit

:setup
cls
setup.exe
goto launcher

:exit
exit
