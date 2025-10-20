@echo off
mount D: .\ARENA -t cdrom
C:
SET ARENADATA=C:
D:
ACD -Ssbpdig.adv -IOS220 -IRQS7 -DMAS1 -Mgenmidi.adv -IOM330 -IRQM2 -DMAM1
exit
