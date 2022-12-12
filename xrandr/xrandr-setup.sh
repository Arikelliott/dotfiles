#! /bin/bash

echo "Enter name of device"
read devicename
echo "Copying xrandr.sh script to home folder..."
rm $HOME/xrandr.sh
ln -sf $HOME/dotfiles/xrandr/$devicename/xrandr.sh $HOME/xrandr.sh
echo "Done!"