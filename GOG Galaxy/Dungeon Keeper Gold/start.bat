# Lines in this section will be run at startup.
@echo off
cls
mount C ".."
imgmount d "..\game.ins" -t iso -fs iso
c:
goto launcher

:launcher
cls
ECHO [1;37m[45mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO º ------------------------------------------ º
ECHO º  Dungeon Keeper GOLD Launcher              º
ECHO º ------------------------------------------ º
ECHO º  1) Dungeon Keeper                         º
ECHO º  2) Deeper Dungeons                        º
ECHO º ------------------------------------------ º
ECHO º  NO CD AUDIO                               º
ECHO º  3) Dungeon Keeper                         º
ECHO º  4) Deeper Dungeons                        º
ECHO º ------------------------------------------ º
ECHO º  5) Sound Settings                         º
ECHO º  6) Language Settings                      º
ECHO º ------------------------------------------ º
ECHO º  7) exit program                           º
ECHO º ------------------------------------------ º
ECHO ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼[0m

choice /c1234567 /s Which program do you want to run? [1-7]: /n 

if errorlevel 7 goto exit
if errorlevel 6 goto lang
if errorlevel 5 goto sound
if errorlevel 4 goto deepernocd
if errorlevel 3 goto keepernocd
if errorlevel 2 goto deeper
if errorlevel 1 goto keeper

:keeper
mount C "..\cloud_saves" -t overlay
cls
keeper.exe
goto exit

:deeper
mount C "..\cloud_saves" -t overlay
cls
deeper.exe
goto exit

:keepernocd
mount C "..\cloud_saves" -t overlay
MIXER CDAUDIO 00:00
cls
keeper.exe
goto exit

:deepernocd
mount C "..\cloud_saves" -t overlay
MIXER CDAUDIO 00:00
cls
deeper.exe
goto exit

:sound
cls
cd sound
setsound.exe
cd ..
goto launcher

:lang
cls
@ECHO [1;37m[45mÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ» 
@ECHO º --------------------------------------- º
@ECHO º  Language Settings                      º
@ECHO º --------------------------------------- º 
@ECHO º  1) English                             º
@ECHO º  2) Dutch                               º
@ECHO º  3) French                              º
@ECHO º  4) Polish                              º
@ECHO º  5) Spanish                             º
@ECHO º  6) Swedish                             º
@ECHO º  7) German                              º
@ECHO º  8) Italian (Deeper Dungeons text only) º
@ECHO º --------------------------------------- º 
@ECHO º  9) Exit without change                 º
@ECHO º --------------------------------------- º 
@ECHO ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼[0m
@ECHO on 
@ECHO off
@choice /c123456789 /s Select game language: [1-9]: /n 
if errorlevel 9 goto exit
if errorlevel 8 goto ITA
if errorlevel 7 goto GER
if errorlevel 6 goto SWE
if errorlevel 5 goto SPA
if errorlevel 4 goto POL
if errorlevel 3 goto FRE
if errorlevel 2 goto DUT
if errorlevel 1 goto ENG

:ENG
set DKLANG1=english
set DKLANG2=English
goto copyres

:DUT
set DKLANG1=dutch
set DKLANG2=Dutch
goto copyres

:FRE
set DKLANG1=french
set DKLANG2=French
goto copyres

:POL
set DKLANG1=polish
set DKLANG2=Polish
goto copyres

:SPA
set DKLANG1=spanish
set DKLANG2=Spanish
goto copyres

:SWE
set DKLANG1=swedish
set DKLANG2=Swedish
goto copyres

:GER
set DKLANG1=german
set DKLANG2=German
goto copyres

:ITA
set DKLANG1=italian
set DKLANG2=Italian
goto copyres

:copyres
COPY d:\keeper\sound\atlas\%DKLANG1%\*.* c:\sound\atlas\*.*
COPY d:\keeper\sound\speech\%DKLANG1%\SPEECH.DAT c:\sound\SPEECH.DAT
COPY d:\keeper\data\%DKLANG2%\DD1TEXT.DAT c:\data\DD1TEXT.dat
COPY d:\keeper\data\%DKLANG2%\TEXT.DAT c:\data\TEXT.DAT
cls
ECHO Language successfully changed to %DKLANG2%
pause
goto launcher

:exit
exit
