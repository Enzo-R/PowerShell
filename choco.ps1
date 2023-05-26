Set-ExecutionPolicy Unrestricted

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install --confirm anydesk
choco install --confirm googlechrome
choco install --confirm adobereader
choco install --confirm notepadplusplus.install
choco install --confirm winrar
choco install --confirm malwarebytes
choco install --confirm greenshot

$browserPath = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$registryPath = "HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice"
Set-ItemProperty -Path $registryPath -Name "ProgId" -Value "ChromeHTML"
Set-ItemProperty -Path $registryPath -Name "Hash" -Value ([byte[]]@(0))
Set-ItemProperty -Path $registryPath -Name "HashAlg" -Value 0
Set-ItemProperty -Path $registryPath -Name "Application" -Value $browserPath
