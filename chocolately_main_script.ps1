Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$Packages =  'notepadplusplus','openvpn','git', 'zoom', 'whatsapp' ,'putty', 'winscp','telegram', 'vlc','lightshot','firefox','adobereader','flashbackexpress', 'googlechrome', 'office365business','7Zip','puntoswitcher','Zeplin'

ForEach ($PackageName in $Packages)
{
    choco install $PackageName -y
}
Get-WmiObject -Class win32_product  -Filter "Name like '%Teams Machine-Wide Installer%'"  | ForEach-Object { $_.Uninstall()}
