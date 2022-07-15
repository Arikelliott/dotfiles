# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable p10k theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Add third-party ZSH plugins
# source ~/.config/zsh/plugins/
source ~/.config/zsh/plugins/third-party/zsh-history-substring-search.zsh
source ~/.config/zsh/plugins/third-party/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/third-party/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add my own custom ZSH plugins
source ~/.config/zsh/plugins/custom/zsh-ptsh-aliases.zsh

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



# Editor of choice
export VISUAL='nano'
export EDITOR='nano'

# Aliases
alias 'cl=clear'
alias 'cbonsai=cbonsai -li --time=0.5'
alias 'cat-token=cat ~/repos/.personal-access-token1'
alias 'gitstat=git status'
alias 'snore=systemctl suspend'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
