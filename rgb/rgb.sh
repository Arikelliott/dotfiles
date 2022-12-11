#!/bin/bash

RGB_ON=catppuccin
RGB_OFF=off

if [ $1 = 'on' ]; then
#    polychromatic-cli -e ~/.config/polychromatic/effects/"$RGB_ON".json
    ckb-next -p "$RGB_ON"
    openrgb -p "$RGB_ON"
else
#    polychromatic-cli -e ~/.config/polychromatic/effects/"$RGB_OFF".json
    ckb-next -p "$RGB_OFF"
    openrgb -p "$RGB_OFF"
fi