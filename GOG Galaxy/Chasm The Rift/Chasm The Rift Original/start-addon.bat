[autoexec]
@echo off
mount c .\GAME
imgmount d chasmpr.cue -t iso
c:
cd chasm
call addon.bat
exit

