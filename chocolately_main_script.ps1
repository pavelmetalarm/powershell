Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$Packages =  'notepadplusplus','openvpn','git', 'zoom', 'whatsapp' ,'putty', 'winscp','telegram', 'vlc','lightshot','firefox','adobereader','flashbackexpress', 'googlechrome', 'office365business','7Zip'

ForEach ($PackageName in $Packages)
{
    choco install $PackageName -y
}
