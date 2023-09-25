#!/bin/bash

# Wallpaper directory
wallpaper_dir="/home/arik/Pictures/wallpapers/art-wallpapers/"

# Selects a random wallpaper file
rand_wallpaper=$(ls "$wallpaper_dir" | sort --random-sort | head -1)

# Get file output
wallname=$(echo "$wallpaper_dir$rand_wallpaper")

sh /home/arik/dotfiles/scripts/swww-wall.sh $wallname



