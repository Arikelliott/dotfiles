
# Created by Arik Elliott 7-15-2022

# Looks for ptsh commands. If they're not installed, doesn't install aliases.
# ptsh info here: https://github.com/jszczerbinsky/ptSh

if ! command -v ptls &> /dev/null
then
    echo "Could not find ptsh. Go to https://github.com/jszczerbinsky/ptSh to install."
else
    alias 'plainls=ls'
    alias 'ls=ptls -A --color=auto'
    alias 'll=ptls -Alh --color=auto'
    alias 'cp=ptcp'
    alias 'pwd=ptpwd'
fi