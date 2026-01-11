#/usr/bin/env bash
sed -i 's/^\([[:space:]]*\)"frameRate":[[:space:]]*[0-9][0-9]*,/\1"frameRate": 120,/' "/storage/emulated/0/Android/data/com.gryphline.exastris.gp/files/GraphicOptionSaveSetting"
cat "/storage/emulated/0/Android/data/com.gryphline.exastris.gp/files/GraphicOptionSaveSetting"
