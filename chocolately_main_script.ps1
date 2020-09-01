Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$Packages = 'googlechrome', 'notepadplusplus','openvpn','git', 'zoom', 'whatsapp' ,'putty', 'winscp','bitrix24','telegram', 'vlc','lightshot','firefox','adobereader','7zip','snagit'

ForEach ($PackageName in $Packages)
{
    choco install $PackageName -y
}
