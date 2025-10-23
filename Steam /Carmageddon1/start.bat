@echo off
cls
mount c ".." -freesize 100000
imgmount d "..\CARMA\GAME.DAT" -t cdrom -fs iso
c:
cd CARMA
cls

@ECHO [40;1m
@ECHO  ----------------------------
@ECHO  Carmageddon
@ECHO  ----------------------------
@ECHO     *SINGLE PLAYER*  
@ECHO on
@ECHO off
@ECHO  1) Carmageddon 3DFX        
@ECHO  2) Carmageddon
@ECHO on
@ECHO off   
@ECHO  ----------------------------
@ECHO  3) exit program             
@ECHO  ----------------------------
@ECHO [0m
@ECHO on 
@choice /c123 /s Which version do you want to play? [1-3]: /n

if errorlevel 3 goto exit
if errorlevel 2 goto car
if errorlevel 1 goto car3dfx

:car3dfx
cls
CONFIG -set "glide=true"
CONFIG -set "grport=600"
CONFIG -set "lfb=full"
cls
3dfx.exe
exit

:car
cls
voodo2c.exe -novoodoo
cls
exit

:exit
exit
