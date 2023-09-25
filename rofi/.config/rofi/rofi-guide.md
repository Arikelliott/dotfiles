Rofi seems pretty confusing tbh

Rofi's dmenu mode seems to read stdout from a shell script, with each line being a selectable button or element or something. Which is honestly pretty cool and simple, makes it very easy to make an interactive script.

Rofi seems to have different modes (or "modi"). Not sure yet why they're called modi, or what they all do. So far:
- run seems to show you a list of apps, so does drun, but in different orders for some reason
    - drun seems to only run apps with a .desktop file
    - run seems to show literally all executable binaries in your $PATH
- window shows you a list of open windows and goes to the one you select
- ssh gives you a list of IP addresses you've logged into before or lets you enter one, then logs into it in a new terminal (doesn't use kitty, not sure what one it's defaulting to)
- combi combines several modes together. Not sure how to specify or what to do with it honestly.
- keys opens up a list of... keybinds or something? Not sure what for.
- filebrowser opens a file browser in Rofi. Enter goes into the selected directory or opens the selected file in its default app.
- recursivebrowser does something I don't understand. 
These all seem to be activated with `rofi -show [mode name]`.

