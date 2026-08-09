#!/bin/sh

. $HOME/.envrc

xrandr --output DisplayPort-0 --primary --rate 75 --mode 1920x1080 --set TearFree on
xrandr --output DisplayPort-1 --primary --rate 75 --mode 1920x1080 --set TearFree on
xrandr --output DisplayPort-2 --primary --rate 75 --mode 1920x1080 --set TearFree on

xrdb ~/.Xresources
xsetroot -solid black
xset m 0

exec dwm
