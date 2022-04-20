# Chocolatey:
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
# Packages:
choco install nvidia-display-driver
choco install lghub
choco install openoffice
choco install adobereader
choco install googlechrome
choco install discord
choco install obs-studio
choco install steam-client
choco install origin
choco install epicgameslauncher
choco install leagueoflegendseuw
choco install blitz.gg
choco install ubisoft-connect
choco install deepl
choco install teamviewer

powershell Invoke-WebRequest -Uri "https://images.wallpapersden.com/image/download/kame-house-dragon-ball-z_a2llbmaUmZqaraWkpJRoZWhnrWZsZWs.jpg"  -OutFile "C:\Windows\Temp\wallpaper.jpg"
powershell Invoke-WebRequest -Uri "https://wallpaperaccess.com/full/1633039.jpg"  -OutFile "C:\Windows\Temp\lockscreen.jpg"

Install-Script -Name Set-LockScreen -Scope "AllUsers" -Force
Set-LockScreen "C:\Windows\Temp\lockscreen.jpg"
Set-Lockscreen -BackgroundSource "C:\Windows\Temp\wallpaper.jpg"
