Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')

$Packages = 'googlechrome', 'notepadplusplus' 

ForEach ($PackageName in $Packages)
{
    choco install $PackageName -y
})
