
# Created by Arik Elliott 7-15-2022

# General terminal aliases

alias 'kitssh=kitty +kitten ssh'
# alias 'cl=clear' # Just use ctrl + L
alias 'cbonsai=cbonsai -li --time=0.5'
alias 'cat-token=cat ~/repos/.personal-access-token1'
alias 'gitstat=git status'
alias 'snore=systemctl suspend'
alias cp="cp -i"
alias df='df -h'
alias free='free -m'
alias 'ls=ls -A --color=auto'
alias 'll=ls -Alh --color=auto'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias ollama='docker exec -it ollama ollama'


# yazi alias
function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
