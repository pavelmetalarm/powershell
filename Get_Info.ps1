
Set-Alias -Name c -Value clear
#Install-Module -Name Systeminfo -Scope CurrentUser
$a = Get-SystemInfo -Properties DeviceModel 
$b = Get-SystemInfo -Properties SerialNumber
$c = $env:computername
$d = 



Write-Output $a.DeviceModel > C:\Users\novikov.p\Desktop\testso.txt
Write-Output $b.SerialNumber >> C:\Users\novikov.p\Desktop\testso.txt

Write-Output $c >> C:\Users\novikov.p\Desktop\testso.txt
Write-Output $d >> C:\Users\novikov.p\Desktop\testso.txt