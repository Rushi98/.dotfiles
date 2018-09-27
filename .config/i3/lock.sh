#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
#dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
playerctl pause
revert() {
	xset dpms 0 0 0
}
trap revert HUP INT TERM
xset +dpms dpms 5 5 5
i3lock -n -u -i /tmp/screen.png
revert

# i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
