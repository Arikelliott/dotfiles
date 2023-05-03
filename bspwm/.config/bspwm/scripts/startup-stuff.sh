#!/bin/sh
sleep 0.5
sh $HOME/xrandr.sh &
nitrogen --restore

export DISPLAY=:0.0
xset s off
xset s noblank
xset -dpms

numlockx
ckb-next -b &
