@echo off

wmic LogicalDisk where VolumeName="CES_X64FREV" get Name  > VSN.txt
for /f "skip=1 delims=" %%A IN ('type VSN.txt') do @set "vsn=%%A"
set "diskletter=%vsn: =%"
del VSN.txt
cd /d %diskletter%

  Powershell.exe -executionpolicy bypass -File  %diskletter%\NewFolder\Silent_installation_example.ps1
timeout 5
REM Powershell.exe -executionpolicy bypass -File  %diskletter%\NewFolder\MAC_Adress_search_and_setup_Host_name.ps1
REM Powershell.exe -executionpolicy bypass -File  %diskletter%\NewFolder\remove_MS_Teams.ps1
REM Powershell.exe -executionpolicy bypass -File  %diskletter%\NewFolder\enter_domain.ps1

