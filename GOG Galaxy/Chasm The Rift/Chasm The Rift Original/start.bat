@echo off
mount e .\GAME
imgmount d chasmpr.cue -t iso
e:
cd chasm
chasm.com
exit
