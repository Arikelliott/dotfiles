<div align="center">
	
	- ~ = ~ = ~ = ~ = ~ = ~ = ~ -
	  .     .         .         
	  |     |    ,- o |         
	,-| ,-. |-   |  . | ,-. ,-. 
	| | | | |    |- | | |-' `-. 
	`-' `-' `-'  |  ' ' `-' `-' 
	-'  
	- ~ = ~ = ~ = ~ = ~ = ~ = ~ -
-----
	
</div>

Currently working on my own aesthetic Linux rice. At the moment I'm using i3wm, though I may try other WMs and DEs in the future.

NOTE: My setup is designed with my computer and choice of programs in mind. It may not work for everyone. That said, one of my main goals with my dotfile repo is to provide a comprehensive guide to installing all the pieces so you can get similar results, or learn to do things how you want and have an easier time than I did.

## Edit log and goals:
My current goals are as follows:
- Do my stylization to polybar, i3, etc.
- Learn eww widgets for different menu dropdowns (poweroff options, sound, time, internet, etc.)


## Steps to recreate:
- I personally use Arch Linux. This guide will be for Arch, will use pacman/yay to install packages, and will assume your system is already pretty empty instead of having lots of existing packages installed or config files.
- If you don't know how to use Github, you'll need to install git and, from the terminal, enter `git clone https://github.com/Arikelliott/dotfiles`. It'll copy all the files in this repository to your computer, as a folder, in whichever folder you're currently in. Note: I personally keep my dotfiles as its own folder in my home folder. If you follow my method of using GNU Stow to manage everything, you'll need to do the same. Speaking of...
- I use GNU Stow to add make soft symbolic links from my dotfiles folder to the places they need to be. You'll need to make sure that the files/folders my dots replace aren't there already (for example, deleting .bashrc to replace it with the one in my dotfiles). To setup the files for something, just enter `stow -S [name of folder, e.g. 'polybar' to install polybar's settings]` into the terminal while you're in the dotfiles folder. 


## Arik's Desktop Environment components:
Here's a list of all the different packages and pieces I'm using so far to get something akin to a full desktop environment experience.
- `i3 window manager` for my wm. In the future I'd like to try a different one that gives me more control and more options, maybe BSPWM or something. I'd also like to setup a wayland-based wm as well for wayland usage, such as sway.
- `autotiling` AUR package for i3, because I don't like i3's autotiling rules and I'm too lazy to configure them myself. This package is a little buggy for some of i3's other normal features (like tabbed/floating modes) and moving a window around the screen in tiling mode acts a little weirder than before, but it does the job.
- `lightdm`/`lightdm-gtk-greeter` for display manager/lock screen. I've bounced back and forth between lightdm, sddm, and gdm. I was using sddm but recently some package cleanup made it act a little buggy and I need to figure out what the issue is or possibly even do a complete system reinstall for housekeeping.
- `picom-ibhagwan-git` for my compositor. Seems to work well, don't know exactly what features it does or doesn't have over regular picom currently.
- `polybar` for my bar. I'd like to replace this with eww widgets or tint2 bar or something else in the future I think, polybar is awesome but it's also not as versatile as I thought it would be. Plus I'd like to standardize a bit.
- `rofi` for my "start menu"/launcher. Simple, works well, I don't admittedly know it well enough to use all the other features I know it has. It's also another one I may replace with eww... or I may use a different bar and learn how to use rofi for all my other widget-y/menu things instead. We'll see I guess.
- `lxpolkit` for my policy kit. Works fine for what I need.
- `nitrogen` for wallpaper setting.
- `autorandr/arandr` for monitor/resolution management. I was trying to get it done with the built in tools but especially since my last hardware change (using a secondary old Quadro GPU and passing through my 6700 XT to virtual machines) it's been incredibly buggy and I haven't found a solution. Running an xrandr script as part of i3's startup scripts also behaves oddly. So now my plan is to set a configuration with arandr, then save and restore it with autorandr. Seems to work reliably.
- `dunst` for notifications. I've done zero configuration of it so far, will hopefully eventually get to that. It works fine though.
- `kitty` for my terminal app. I like it so far, though it occasionally has bugs with SSH.
- `zsh` for my standard shell, with powerlevel10k and some other plugins. I have some bugs to sort out because I was lazy and copied everything from Manjaro without understanding it, and occasionally it yells at me about errors.
- `nemo` for my file browser. Truth be told I like KDE's dolphin best of any file browser so far, but this one seems closest to what I want in terms of functionality, and sadly dolphin's Qt themes don't mesh well with the GTK-based theming I'm using for everything else.
- `vscodium` for programming/text editing. Sometimes overkill for my uses since I'm a noob at coding and rarely do more than edit config files, but it works and looks nice.
