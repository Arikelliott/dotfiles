# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e ~/.config/zsh/manjaro-zsh-config ]]; then
  source ~/.config/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e ~/.config/zsh/manjaro-zsh-prompt ]]; then
  source ~/.config/zsh/manjaro-zsh-prompt
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
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

export VISUAL='nano'
export EDITOR='nano'
