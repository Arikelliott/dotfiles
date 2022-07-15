# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arik/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion::complete:*' gain-privileges 1

source ~/powerlevel10k/powerlevel10k.zsh-theme



# Editor of choice
export VISUAL='nano'
export EDITOR='nano'

# Aliases
alias 'cl=clear'
alias 'plainls=ls'
alias 'ls=ptls -A --color=auto'
alias 'll=ptls -Alh --color=auto'
alias 'cbonsai=cbonsai -li --time=0.5'
alias 'cat-token=cat ~/repos/.personal-access-token1'
alias 'gitstat=git status'
alias 'cp=ptcp'
alias 'pwd=ptpwd'
alias 'snore=systemctl suspend'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
