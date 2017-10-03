#!/usr/bin/env bash

icon="$HOME/.xlock/icon.png"
tmpbg='/tmp/screen.png'
scrot "$tmpbg"
convert "$tmpbg" -scale 4% -scale 2500% "$tmpbg"
# convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
#i3lock -u -i "$tmpbg"
i3lock -i "$tmpbg"
rm "$tmpbg"
