imgmount d ..\worms.CUE -t iso -fs iso
c:
cd WORMS

@echo off
:MENU
cls
echo ================================
echo             WORMS 
echo ================================
echo.
echo 1. Start WORMS
echo 2. Start WORMS without Intro
echo 3. Start MULTIPLAYER
echo 4. Quit
echo.
choice /c:1234 /n "Select an option (1-4): "

if errorlevel 4 goto END
if errorlevel 3 goto MULTI
if errorlevel 2 goto WORMS
if errorlevel 1 goto ORIG

echo Invalid choice. Please try again.
pause
goto MENU

:ORIG
call ORIG_W~1.BAT
pause
goto MENU

:WORMS
call WORMS.BAT
pause
goto MENU

:MULTI
call MULTI.BAT
pause
goto MENU

:END
echo Exiting...
exit
