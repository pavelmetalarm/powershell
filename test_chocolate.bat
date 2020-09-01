@echo off

wmic LogicalDisk where VolumeName="CES_X64FREV" get Name  > VSN.txt
for /f "skip=1 delims=" %%A IN ('type VSN.txt') do @set "vsn=%%A"
set "diskletter=%vsn: =%"
del VSN.txt
cd /d %diskletter%

  Powershell.exe -executionpolicy bypass -File  %diskletter%\NewFolder\chocolately_main_script.ps1
timeout 5



