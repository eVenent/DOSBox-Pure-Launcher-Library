# Lines in this section will be run at startup.
@echo off
mount C ".."
mount C "..\cloud_saves" -t overlay
imgmount D "..\GAME.INS" -t iso
c:
CD INDARK3
goto launcher

:launcher
cls
ECHO [1;33m[42mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO º ------------------------------------------ º
ECHO º  Alone in the Dark 3 Launcher              º
ECHO º ------------------------------------------ º
ECHO º  1) Alone in the Dark 3                    º
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
d:
INSTALL
c:
goto launcher

:game
cls
AITD3
goto exit

:exit
exit
