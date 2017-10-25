#!/usr/bin/env bash

tmpbg='/tmp/screen.jpeg'
outbg='/tmp/screen.png'
scrot "$tmpbg"

#convert "$tmpbg" -scale 4% -scale 2500% "$outbg"
$HOME/NixConfig/img_scale "$tmpbg" "$outbg"
# convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
#i3lock -u -i "$tmpbg"
i3lock -i "$outbg"

rm "$tmpbg"
rm "$outbg"
