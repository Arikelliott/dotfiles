## ------ Powerlevel10k -------

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable p10k theme
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable starship theme
# eval "$(starship init zsh)"



## -------- MY CHANGES ---------

# Add third-party ZSH plugins
source ~/.config/zsh/plugins/third-party/zsh-history-substring-search.zsh
source ~/.config/zsh/plugins/third-party/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/third-party/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add my own custom ZSH plugins
# source ~/.config/zsh/plugins/custom/wal-terminal-support.zsh # Setting Kitty to do it instead
source ~/.config/zsh/plugins/custom/kitty-terminal-support.zsh
source ~/.config/zsh/plugins/custom/custom-variables.zsh
source ~/.config/zsh/plugins/custom/zsh-custom-keybinds.zsh
source ~/.config/zsh/plugins/custom/zsh-aliases.zsh
#source ~/.config/zsh/plugins/custom/zsh-ptsh-aliases.zsh

# Add ZSH configurations (currently pulled from Manjaro's defaults)
#source ~/.config/zsh/external-configs/zsh-aliases
source ~/.config/zsh/external-configs/zsh-keybindings
source ~/.config/zsh/external-configs/zsh-options
source ~/.config/zsh/external-configs/zsh-settings # hmm



# Support for Cool Retro Term
source ~/.config/zsh/plugins/custom/crt-terminal-support.zsh 

eval "$(zoxide init --cmd cd zsh)"