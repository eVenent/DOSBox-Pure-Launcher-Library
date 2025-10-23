:: LAUNCH OPTIONS: "start_RA_menu.bat" %command%
:: Author: FlameMan

@echo off
:menu
cls
echo =============================================
echo         SHADOW WARRIOR CLASSIC (1997)
echo =============================================
echo [1] Play Shadow Warrior Classic (1997)
echo [2] Play Prototypes/Betas
echo [3] Exit
echo =============================================
set /p choice=Choose an option (1-3): 

if "%choice%"=="1" (
    ..\..\RetroArch\retroarch -L ..\..\RetroArch\cores\dosbox_pure_libretro.dll .\start.bat
    goto menu
) else if "%choice%"=="2" (
    ..\..\RetroArch\retroarch -L ..\..\RetroArch\cores\dosbox_pure_libretro.dll .\betas.bat
    goto menu
) else if "%choice%"=="3" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)
