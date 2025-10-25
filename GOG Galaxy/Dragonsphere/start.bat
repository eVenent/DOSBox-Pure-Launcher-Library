# Lines in this section will be run at startup.


echo off
mount C ".."
mount C "..\cloud_saves" -t overlay
imgmount D "..\GAME.INS" -t iso
c:

goto launcher

:launcher
cls
ECHO [1;37m[45mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO º ---------------------------------- º
ECHO º  Dragosphere Launcher              º
ECHO º ---------------------------------- º
ECHO º  1) Launch Dragonsphere            º
ECHO º  2) Launch Config                  º
ECHO º ---------------------------------- º
ECHO º  3) Exit program                   º
ECHO º ---------------------------------- º
ECHO ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼[0m

choice /c123 /s Choose an option [1-3]: /n

if errorlevel 3 goto exit
if errorlevel 2 goto config
if errorlevel 1 goto dragon

:dragon
cd DRAGON
cls
CALL DRAGON.BAT
exit

:config
cd DRAGON
cls
CALL INSTALL.EXE
goto launcher

:exit
exit
