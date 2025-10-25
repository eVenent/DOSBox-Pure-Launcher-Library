@echo off
mount d "..\"
mount D "..\cloud_saves" -t overlay
d:
goto launcher

:launcher
cls
ECHO [1;37m[45mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO º ------------------------------------------ º
ECHO º Jazz Jackrabbit Collection                 º
ECHO º ------------------------------------------ º
ECHO º  Jazz Jackrabbit CD-ROM version            º
ECHO º    1) Launch game                          º
ECHO º    2) Sound and Language Settings          º
ECHO º ------------------------------------------ º
ECHO º  Jazz Jackrabbit Holiday Hare '95          º
ECHO º    3) Launch game                          º
ECHO º    4) Sound and Language Settings          º
ECHO º ------------------------------------------ º
ECHO º    5) Exit program                         º
ECHO º ------------------------------------------ º
ECHO ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼[0m
ECHO CONFIGURE SOUND BEFORE LAUNCH!

choice /c1234567 /s Which game do you want to run? [1-5]: /n 
if errorlevel 5 goto exit
if errorlevel 4 goto setup95
if errorlevel 3 goto hh95
if errorlevel 2 goto setupcd
if errorlevel 1 goto jazz

:jazz
cls
jazz.exe
goto exit

:setupcd
cls
setup.exe
cd..
goto launcher

:hh95
cls
cd hh95
jazz.exe
goto exit

:setup95
cls
cd hh95
setup.exe
cd..
goto launcher

:exit
exit
