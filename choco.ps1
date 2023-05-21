Set-ExecutionPolicy Unrestricted

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install --confirm anydesk
choco install --confirm googlechrome
choco install --confirm adobereader
choco install --confirm notepadplusplus.install
choco install --confirm winrar
choco install --confirm malwarebytes
choco install --confirm greenshot