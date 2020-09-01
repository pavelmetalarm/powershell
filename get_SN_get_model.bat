


@echo off

wmic LogicalDisk where VolumeName="CPBA_X64FRE_RU-RU_DV9" get Name  > VSN.txt
for /f "skip=1 delims=" %%A IN ('type VSN.txt') do @set "vsn=%%A"
set "diskletter=%vsn: =%"
del VSN.txt
cd /d %diskletter%

Powershell.exe -executionpolicy bypass -File  %diskletter%\NewFolder\Get_Info.ps1



