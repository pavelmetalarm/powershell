﻿Get-WmiObject -Class win32_product  -Filter "Name like '%Teams Machine-Wide Installer%'"  | ForEach-Object { $_.Uninstall()}