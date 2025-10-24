@echo off
cls
mount c ".." -freesize 100000
c:
cls

@ECHO [40;1m
@ECHO  -------------------------------
@ECHO  Carmageddon Max Pack
@ECHO  -------------------------------
@ECHO     *SINGLE PLAYER*  
@ECHO on
@ECHO off
@ECHO  1) Carmageddon 3DFX        
@ECHO  2) Carmageddon Splat Pack 3DFX        
@ECHO  3) Carmageddon
@ECHO  4) Carmageddon Splat Pack
@ECHO  5) Run the game without music
@ECHO on
@ECHO off   
@ECHO  -------------------------------
@ECHO  6) exit program             
@ECHO  -------------------------------
@ECHO [0m
@ECHO on 
@choice /c123456 /s Which version do you want to play? [1-6]: /n

if errorlevel 6 goto exit
if errorlevel 5 goto nomusic
if errorlevel 4 goto splat
if errorlevel 3 goto car
if errorlevel 2 goto splat3dfx
if errorlevel 1 goto car3dfx

:car3dfx
cls
imgmount d "..\CARMA\GAME.DAT" -t cdrom -fs iso
cd CARMA
CONFIG -set "glide=true"
CONFIG -set "grport=600"
CONFIG -set "lfb=full"
cls
3dfx.exe
exit

:splat3dfx
cls
imgmount d "..\CARSPLAT\SPLAT.DAT" -t cdrom -fs iso
cd CARSPLAT
CONFIG -set "glide=true"
CONFIG -set "grport=600"
CONFIG -set "lfb=full"
cls
carmav.exe
exit

:car
cls
imgmount d "..\CARMA\GAME.DAT" -t cdrom -fs iso
cd CARMA
cls
voodo2c.exe -novoodoo
exit

:splat
cls
imgmount d "..\CARSPLAT\SPLAT.DAT" -t cdrom -fs iso
cd CARSPLAT
cls
voodo2c.exe -novoodoo
exit

:nomusic
cls
@ECHO [40;1m
@ECHO  -------------------------------
@ECHO  Carmageddon Max Pack NO MUSIC
@ECHO  -------------------------------
@ECHO     *SINGLE PLAYER*  
@ECHO on
@ECHO off
@ECHO  1) Carmageddon 3DFX        
@ECHO  2) Carmageddon Splat Pack 3DFX        
@ECHO  3) Carmageddon
@ECHO  4) Carmageddon Splat Packc
@ECHO on
@ECHO off   
@ECHO  -------------------------------
@ECHO  5) exit program             
@ECHO  -------------------------------
@ECHO [0m
@ECHO on 
@choice /c12345 /s Which version do you want to play? [1-5]: /n

if errorlevel 5 goto exit
if errorlevel 4 goto nosplat
if errorlevel 3 goto nocar
if errorlevel 2 goto nosplat3dfx
if errorlevel 1 goto nocar3dfx

:nocar3dfx
cls
imgmount d "..\CARMA\GAME.DAT" -t cdrom -fs iso
MIXER CDAUDIO 00:00
cd CARMA
CONFIG -set "glide=true"
CONFIG -set "grport=600"
CONFIG -set "lfb=full"
cls
3dfx.exe
exit

:nosplat3dfx
cls
imgmount d "..\CARSPLAT\SPLAT.DAT" -t cdrom -fs iso
MIXER CDAUDIO 00:00
cd CARSPLAT
CONFIG -set "glide=true"
CONFIG -set "grport=600"
CONFIG -set "lfb=full"
cls
carmav.exe
exit

:nocar
cls
imgmount d "..\CARMA\GAME.DAT" -t cdrom -fs iso
MIXER CDAUDIO 00:00
cd CARMA
cls
voodo2c.exe -novoodoo
exit

:nosplat
cls
imgmount d "..\CARSPLAT\SPLAT.DAT" -t cdrom -fs iso
MIXER CDAUDIO 00:00
cd CARSPLAT
cls
voodo2c.exe -novoodoo
exit

:exit
exit
