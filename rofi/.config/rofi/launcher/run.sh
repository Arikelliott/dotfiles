#! /bin/dash

# Set program name
program_name="rofi"

# Check if Rofi is running. If not, kill it instead. This allows toggling between opening/closing Rofi with Super key.
if pidof "$program_name" >/dev/null; then
    pkill $program_name
else
    # 
    rofi -show drun \
    -modi drun,run \
    -icon-theme "Papirus" -show-icons
    -theme /home/arik/dotfiles/rofi/.config/rofi/config.rasi
fi


# rofi -show drun \
#     -modi drun,run \
#     -icon-theme "Papirus" -show-icons
#     -theme /home/arik/dotfiles/rofi/.config/rofi/config.rasi