@echo off
set PATH=%PATH%;%USERPROFILE%\AppData\Local\Android\sdk\platform-tools
adb shell "curl -fsSL https://raw.githubusercontent.com/comfiestsofa/Ex-Astris-FPS-Unlocker/refs/heads/master/android/ex-astris-120-fps.sh | sh"
pause
