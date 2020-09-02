$drive_letter = $(Get-Volume -FriendlyName "CES_X64FREV" | Select -ExpandProperty  "DriveLetter")
$a = $drive_letter.ToString()
Start-Process -Wait -FilePath "${a}:\NewFolder\7z1900-x64.exe" -ArgumentList '/S','/v','/qn' -passthru;
sleep 3      

Start-Process -Wait -FilePath "${a}:\NewFolder\bitrix24_desktop.exe" -ArgumentList '/S','/v','/qn' -passthru
sleep 5

Start-Process  -FilePath "${a}:\NewFolder\ChromeStandaloneSetup64.exe"  -passthru
sleep 25




Start-Process  -FilePath "${a}:\NewFolder\Setup.Def.ru-ru_O365ProPlusRetail_04ed2b98-f294-4f09-b024-05f4d77b71bf_TX_DB_Platform_def_b_32_"  -passthru


