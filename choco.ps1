Set-ExecutionPolicy Unrestricted

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install --confirm anydesk
choco install --confirm googlechrome
choco install --confirm iisexpress
choco install --confirm webdeploy
choco install --confirm postman
choco install --confirm postgresql10