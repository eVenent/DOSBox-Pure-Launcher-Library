:: LAUNCH OPTIONS: "start_RA_menu.bat" %command%
:: Author: FlameMan

@echo off
:menu
cls
echo =============================================
echo                 SYSTEM SHOCK
echo =============================================
echo [1] Play System Shock: Classic
echo [2] Play System Shock: Classic - Floppy
echo [3] Play System Shock: Classic - CD
echo [4] Exit
echo =============================================
set /p choice=Choose an option (1-4): 

if "%choice%"=="1" (
    ..\..\RetroArch\retroarch -L ..\..\RetroArch\cores\dosbox_pure_libretro.dll ..\start.bat
    goto menu
) else if "%choice%"=="2" (
    ..\..\RetroArch\retroarch -L ..\..\RetroArch\cores\dosbox_pure_libretro.dll ..\start_fd.bat
    goto menu
) else if "%choice%"=="3" (
    ..\..\RetroArch\retroarch -L ..\..\RetroArch\cores\dosbox_pure_libretro.dll ..\start_cd.bat
    goto menu
) else if "%choice%"=="4" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)
