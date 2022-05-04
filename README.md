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
