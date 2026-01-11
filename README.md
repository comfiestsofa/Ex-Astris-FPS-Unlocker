# Ex Astris FPS Unlocker
Unlocks Ex Astris's FPS above 60 FPS.

Currently only Android is supported, but iOS/macOS (PlayCover) can be theoretically supported too.

# Is this safe?
Ex Astris is a singleplayer game, and the cloud save sync doesn't include graphics settings, so there *should* be no risk of bans for modifying the client graphics settings file, but **please use this at your own risk.**

All this is doing is modifying the JSON file (no extension) at `/storage/emulated/0/Android/data/com.gryphline.exastris.gp/files/GraphicOptionSaveSetting` and replacing `"frameRate": 60` with `"frameRate": 120`. So you can do it manually if you want using `adb pull` and `adb push` or whatever other method you might have to edit JSON files like that.

# How to use
* Make sure you have ADB installed. Easiest way is probably by installing [Android Studio](https://developer.android.com/studio).
* Enable Developer Mode and ADB on your Android device or emulator.
	* Real Android device: https://developer.android.com/studio/debug/dev-options
	* MuMuPlayer: Already enabled by default, I think? (Device Settings -> Others -> ADB debug) You might need to do `adb connect localhost:5555` manually if it doesn't work. https://www.mumuplayer.com/help/win/connect-adb.html
	* BlueStacks: https://support.bluestacks.com/hc/articles/23925869130381-How-to-enable-Android-Debug-Bridge-on-BlueStacks-5
* Fully close the game if you have it running.
* Run `android-adb-ex-astris-120-fps.bat` or `android-adb-ex-astris-120-fps.sh`.

# FAQ
* My game isn't running above 60 FPS!
	* Ex Astris is a *very* demanding game. Your GPU probably isn't fast enough. The title menu should be able to hit 120 FPS, though.
* I see an error `/storage/emulated/0/Android/data/com.gryphline.exastris.gp/files/GraphicOptionSaveSetting: No such file or directory`!
	* Please open Ex Astris and let it reach at least the Hypergryph/Gryphline/Nous Wave Studio logos, then fully close the game.
* I see an error `'adb' is not recognized as an internal or external command, operable program or batch file.`
	* https://stackoverflow.com/questions/20564514/adb-is-not-recognized-as-an-internal-or-external-command-operable-program-or
* I'm using a Mac and clicking the .sh file doesn't do anything.
	* https://apple.stackexchange.com/a/322693
