Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install --confirm anydesk
choco install --confirm googlechrome
choco install --confirm adobereader
choco install --confirm notepadplusplus.install
choco install --confirm winrar
choco install --confirm malwarebytes
choco install --confirm greenshot

# Definir o Google Chrome como o navegador padrão
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"  # Caminho para o executável do Google Chrome

Start-Process -FilePath $chromePath -ArgumentList "--make-default-browser"

# Definir o caminho do executável do Google Chrome para protocolos HTTP/HTTPS
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice" -Name "ProgId" -Value "ChromeHTML"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice" -Name "ProgId" -Value "ChromeHTML"
