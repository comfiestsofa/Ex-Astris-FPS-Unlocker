#!/usr/bin/env sh
EX_ASTRIS_GRAPHICS_SETTINGS="$HOME/Library/Containers/com.gryphline.exastris.ios/Data/Documents/GraphicOptionSaveSetting"
if [[ -f "$EX_ASTRIS_GRAPHICS_SETTINGS" ]]; then
	# Update frameRate to 120
	sed -i 's/^\([[:space:]]*\)"frameRate":[[:space:]]*[0-9][0-9]*,/\1"frameRate": 120,/' "$EX_ASTRIS_GRAPHICS_SETTINGS"

	# Display the updated file
	cat "$EX_ASTRIS_GRAPHICS_SETTINGS"
else
	echo "Please open Ex Astris and let it reach at least the Hypergryph/Gryphline/Nous Wave Studio logos, then fully close the game. (Error: Couldn't find $FILE)"
fi
