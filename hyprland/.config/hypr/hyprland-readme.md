# CLEAN DIRECTORY GOAL
I wanted a clean, clear directory structure for people to follow, as well as modularity. Everything is split up between different locations.
The base hyprland.conf config file and the readme are in the base hypr folder in ~/.config/hypr
All sourced config files are under ./configs
Display configurations have their own folder under ./configs, since there might be multiple saved display setups
"Modes" has a ./modes folder. These will be different UI modes I'd like to build, which will be able to be switched between with a script. (At present I'm planning to add an extra mode that can be fully controlled by the GUI and using a mouse, without needing keyboard shortcuts. This is for ease of use if someone else wants to use my PC.)
Any scripts to add extra functionality will be under ./scripts
I'd like to add a future ./themes folder with different themes that can be swapped between, customizing the look of Hyprland


# TO-DO
- Create and label all variables