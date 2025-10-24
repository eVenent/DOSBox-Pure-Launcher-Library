:: LAUNCH OPTIONS: "start_RA_menu.bat" %command%
:: Author: FlameMan

@echo off
:menu
cls
echo =============================================
echo        STAR WARS: REBEL ASSAULT I + II
echo =============================================
echo [1] Play Star Wars - Rebel Assault
echo [2] Play Star Wars - Rebel Assault II
echo [3] Exit
echo =============================================
set /p choice=Choose an option (1-3): 

if "%choice%"=="1" (
    ..\..\RetroArch\retroarch -L ..\..\RetroArch\cores\dosbox_pure_libretro.dll ..\REBEL\REBEL.EXE
    goto menu
) else if "%choice%"=="2" (
    ..\..\RetroArch\retroarch -L ..\..\RetroArch\cores\dosbox_pure_libretro.dll ..\REBEL2\REBEL2.EXE
    goto menu
) else if "%choice%"=="3" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)
