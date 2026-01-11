#!/usr/bin/env bash
PATH="$PATH:$USERPROFILE/AppData/Local/Android/sdk/platform-tools:${HOME}/Library/Android/sdk/platform-tools:${HOME}/Android/Sdk/platform-tools"
adb shell "curl -fsSL https://raw.githubusercontent.com/comfiestsofa/Ex-Astris-FPS-Unlocker/refs/heads/master/android/ex-astris-120-fps.sh | sh"
