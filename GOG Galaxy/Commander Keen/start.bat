# Lines in this section will be run at startup.
@echo off
mount C ".."
mount C "..\cloud_saves" -t overlay
c:
goto launcher

:launcher
cls
ECHO [1;33m[42mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO º ------------------------------------------- º
ECHO º  Commander Keen: Invasion of the Vorticons  º
ECHO º ------------------------------------------- º
ECHO º  1) Episode 1: Marooned on Mars             º
ECHO º  2) Episode 2: The Earth Explodes           º
ECHO º  3) Episode 3: Keen Must Die!               º
ECHO º ------------------------------------------- º
ECHO ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO [1;33m[44mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO º ------------------------------------------- º
ECHO º   Commander Keen in Goodbye Galaxy!         º
ECHO º ------------------------------------------- º
ECHO º  4) Episode 4: Secret of the Oracle         º
ECHO º  5) Episode 5: The Armageddon Machine       º
ECHO º ------------------------------------------- º
ECHO º  6) Exit program                            º
ECHO º ------------------------------------------- º
ECHO ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼[0m

choice /c123456 /s Which program do you want to run? [1-6]: /n 
if errorlevel 6 goto exit
if errorlevel 5 goto keen5
if errorlevel 4 goto keen4
if errorlevel 3 goto keen3
if errorlevel 2 goto keen2
if errorlevel 1 goto keen1

:keen1
cd KEEN1
cls
KEEN1
goto exit

:keen2
cd KEEN2
cls
KEEN2
goto exit

:keen3
cd KEEN3
cls
KEEN3
goto exit

:keen4
cd KEEN4
cls
KEEN4E
goto exit

:keen5
cd KEEN5
cls
KEEN5E
goto exit

:exit
exit
