@echo off

:: Set PATH to include adb
set PATH=%PATH%;%USERPROFILE%\AppData\Local\Android\sdk\platform-tools

:: Disabled because some Android installs (including MuMuPlayer Android 15 despite it existing on MuMuPlayer Android 12) don't have curl
:: adb shell "curl -fsSL https://raw.githubusercontent.com/comfiestsofa/Ex-Astris-FPS-Unlocker/refs/heads/master/android/ex-astris-120-fps.sh | sh"

:: Use PowerShell to base64 encode the script into a temp file
powershell -Command "[Convert]::ToBase64String([IO.File]::ReadAllBytes('android\ex-astris-120-fps.sh'))" > "%TEMP%\ex-astris-120-fps.sh.base64"

:: Read the base64 content into a variable
set /p BASH_SCRIPT_BASE64= < "%TEMP%\ex-astris-120-fps.sh.base64"
del /f "%TEMP%\ex-astris-120-fps.sh.base64"

adb shell "echo \"%BASH_SCRIPT_BASE64%\" | base64 -d | sh"

pause
