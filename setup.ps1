# Chocolatey:
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
# Packages:
choco install nvidia-display-driver --yes
choco install lghub --yes
choco install openoffice --yes
choco install adobereader --yes
choco install googlechrome --yes
choco install discord --yes
choco install obs-studio --yes
choco install steam-client --yes
choco install origin --yes
choco install epicgameslauncher --yes
choco install leagueoflegendseuw --yes
choco install blitz.gg --yes
choco install ubisoft-connect --yes
choco install deepl --yes
choco install teamviewer --yes

powershell Invoke-WebRequest -Uri "https://images.wallpapersden.com/image/download/kame-house-dragon-ball-z_a2llbmaUmZqaraWkpJRoZWhnrWZsZWs.jpg"  -OutFile "C:\Windows\Temp\wallpaper.jpg"
powershell Invoke-WebRequest -Uri "https://wallpaperaccess.com/full/1633039.jpg"  -OutFile "C:\Windows\Temp\lockscreen.jpg"

Install-Script -Name Set-LockScreen -Scope "AllUsers" -Force
Set-LockScreen "C:\Windows\Temp\lockscreen.jpg"
Set-Lockscreen -BackgroundSource "C:\Windows\Temp\wallpaper.jpg"
