#!/bin/sh

. $HOME/.envrc

for p in 0 1 2; do
	xrandr --output DisplayPort-$p --primary --rate 75 --mode 1920x1080 --set TearFree on
done

xrdb ~/.Xresources
xsetroot -solid black
xset m 0

exec dwm
