:: LAUNCH OPTIONS: "start_RA_menu.bat" %command%
:: Author: FlameMan

@echo off
:menu
cls
echo ==================================================
echo                   COMMANDER KEEN
echo ==================================================
echo [1] Play Commander Keen Complete Pack
echo [2] Launch Commander Keen The Earth Explodes
echo [3] Launch Commander Keen Must Die
echo [4] Launch Commander Keen Secret of the Oracle
echo [5] Launch Commander Keen The Armaggeddon Machine
echo [6] Exit
echo ==================================================
set /p choice=Choose an option (1-6): 

if "%choice%"=="1" (
    ..\RetroArch\retroarch -L ..\RetroArch\cores\dosbox_pure_libretro.dll .\base1\KEEN1.EXE
    goto menu
) else if "%choice%"=="2" (
    ..\RetroArch\retroarch -L ..\RetroArch\cores\dosbox_pure_libretro.dll .\base2\KEEN2.EXE
    goto menu
) else if "%choice%"=="3" (
    ..\RetroArch\retroarch -L ..\RetroArch\cores\dosbox_pure_libretro.dll .\base3\KEEN3.EXE
    goto menu
) else if "%choice%"=="4" (
    ..\RetroArch\retroarch -L ..\RetroArch\cores\dosbox_pure_libretro.dll .\base4\KEEN4E.EXE
    goto menu
) else if "%choice%"=="5" (
    ..\RetroArch\retroarch -L ..\RetroArch\cores\dosbox_pure_libretro.dll .\base5\KEEN5E.EXE
    goto menu
) else if "%choice%"=="6" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)
