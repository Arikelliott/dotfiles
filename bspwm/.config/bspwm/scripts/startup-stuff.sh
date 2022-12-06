#!/bin/sh
sleep 0.5
sh /home/arik/dotfiles/bspwm/.config/bspwm/scripts/bspwm-xrandr-setup.sh &
nitrogen --restore

export DISPLAY=:0.0
xset s off
xset s noblank
xset -dpms

numlockx