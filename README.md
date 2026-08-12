# Ex Astris FPS Unlocker
Unlocks Ex Astris's FPS above 60 FPS.

Works on both iOS/macOS (PlayCover) and Android.

# Is this safe?
Ex Astris is a singleplayer game, and the cloud save sync doesn't include graphics settings, so there *should* be no risk of bans for modifying the client graphics settings file, but **please use this at your own risk.**

All this is doing is modifying the JSON file (which has no extension) at `GraphicOptionSaveSetting` inside Ex Astris's app data folder and replacing `"frameRate": 60` with `"frameRate": 120`, which you can also do manually.

# How to use
## Android
* Make sure you have ADB installed. Easiest way is probably by installing [Android Studio](https://developer.android.com/studio).
* Enable Developer Mode and ADB on your Android device or emulator.
	* Real Android device: https://developer.android.com/studio/debug/dev-options
	* MuMuPlayer: Enabled by default. (Device Settings -> Developer options -> ADB debug) You might need to do `adb connect localhost:5555` manually if it doesn't work at first. https://www.mumuplayer.com/help/win/connect-adb.html
	* BlueStacks: https://support.bluestacks.com/hc/articles/23925869130381-How-to-enable-Android-Debug-Bridge-on-BlueStacks-5
* Make sure you've run the game at least once before.
* Fully close the game if you have it running.
* Run `android-adb-ex-astris-120-fps.bat` or `android-adb-ex-astris-120-fps.sh`.
	* If you want to do it manually instead:
	* `adb pull "/storage/emulated/0/Android/data/com.gryphline.exastris.gp/files/GraphicOptionSaveSetting"`
	* Open `GraphicOptionSaveSetting` in a text editor and replace `"frameRate": 60` with `"frameRate": 120`.
	* `adb push "GraphicOptionSaveSetting" "/storage/emulated/0/Android/data/com.gryphline.exastris.gp/files/GraphicOptionSaveSetting"`

## iOS
* You will need either:
	* A jailbroken iOS device with [Filza (Jailbroken)](https://www.tigisoftware.com/default/?page_id=78) installed
	* A TrollStore iOS device with [Filza (TrollStore)](https://www.tigisoftware.com/default/?p=439) installed
	* A jailbroken iOS device with SSH or AFC2 installed
	* Some other way to change app data (like modifying iTunes backups)
* Make sure you've run the game at least once before.
* Fully close the game if you have it running.
* Find Ex Astris's app data folder.
	* Filza:
		* Find "Ex Astris" in the App Manager.
	* Jailbroken SSH:
		* Look inside `/User/Containers/Data/Application` or `/var/mobile/Containers/Data/Application` and run `find . -type d -name "com.gryphline.exastris.ios*"`. It'll be something like `279354AD-EF5F-4D39-AF8F-57911B01E546`.
* Go inside that folder, then `Documents`, and find `GraphicOptionSaveSetting`.
* Open it in a text editor and replace `"frameRate": 60` with `"frameRate": 120`.

## macOS (PlayCover)
* Make sure you've run the game at least once before.
* Fully close the game if you have it running.
* Run `macos-ex-astris-120-fps.sh`.
	* If you want to do it manually instead, open `~/Library/Containers/com.gryphline.exastris.ios/Data/Documents/GraphicOptionSaveSetting` in a text editor and replace `"frameRate": 60` with `"frameRate": 120`.

# FAQ
* My game isn't hitting a stable 120 FPS!
	* Ex Astris is a *very* demanding game. Your GPU probably isn't fast enough. The title menu at least should definitely be able to hit 120 FPS, though.
* I see an error `'adb' is not recognized as an internal or external command, operable program or batch file.`
	* https://stackoverflow.com/questions/20564514/adb-is-not-recognized-as-an-internal-or-external-command-operable-program-or
* I'm on macOS and opening the .sh file doesn't do anything.
	* https://apple.stackexchange.com/a/322693
