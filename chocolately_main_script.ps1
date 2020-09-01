Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')

$Packages = 'googlechrome', 'notepadplusplus', 'zoom', 'whatsapp' , 'telegram', 'vlc','lightshot','adobereader','7zip','snagit'

ForEach ($PackageName in $Packages)
{
    choco install $PackageName -y
})
