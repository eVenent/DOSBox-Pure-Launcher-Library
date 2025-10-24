# Lines in this section will be run at startup.
@echo off
mount C "."
mount C ".\cloud_saves" -t overlay
imgmount D ".\GAME.INS" -t iso
c:
goto launcher

:launcher
cls
ECHO [1;33m[42mɍ͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍»
ECHO º --------------------------------------- º
ECHO º Alone in the Dark Launcher              º
ECHO º --------------------------------------- º
ECHO º  1) Alone in the Dark                   º
ECHO º  2) Jack in the Dark                    º
ECHO º  3) AitD DOS Settings (inc. Language)   º
ECHO º  4) JitD DOS Settings (inc. Language)   º
ECHO º --------------------------------------- º
ECHO º  5) exit program                        º
ECHO º --------------------------------------- º
ECHO ȍ͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍͍¼[0m

choice /c12345 /s Which program do you want to run? [1-5]: /n 
if errorlevel 5 goto exit
if errorlevel 4 goto jsetup
if errorlevel 3 goto asetup
if errorlevel 2 goto jack
if errorlevel 1 goto alone

:alone
cls
CD INDARK
INDARK
goto exit

:jack
cls
CD JACK
indark2 16 1
cleardrv >NUL
goto exit

:asetup
cls
CD INDARK
INSTALL
cd ".."
goto launcher

:jsetup
cls
CD JACK
INSTALL
cd ".."
goto launcher

:exit
exit
