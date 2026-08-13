#!/usr/bin/env bash

# cd to path of script
cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"

# Set PATH to include adb
PATH="$PATH:$USERPROFILE/AppData/Local/Android/sdk/platform-tools:${HOME}/Library/Android/sdk/platform-tools:${HOME}/Android/Sdk/platform-tools"

# Disabled because some Android devices (including MuMuPlayer on Android 15) don't have curl
# adb shell "curl -fsSL https://raw.githubusercontent.com/comfiestsofa/Ex-Astris-FPS-Unlocker/refs/heads/master/android/ex-astris-120-fps.sh | sh"

adb shell "echo \"$(cat "android/ex-astris-120-fps.sh" | base64)\" | base64 -d | sh"

exit
