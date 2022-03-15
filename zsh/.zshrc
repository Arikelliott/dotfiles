# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -- key bindings
# bindkey "e[1~" beginning-of-line
# bindkey "e[4~" end-of-line
# bindkey "e[5~" beginning-of-history
# bindkey "e[6~" end-of-history
# bindkey "e[3~" delete-char
# bindkey "e[2~" quoted-insert
# bindkey "e[5C" forward-word
# bindkey "eOc" emacs-forward-word
# bindkey "e[5D" backward-word
# bindkey "eOd" emacs-backward-word
# bindkey "ee[C" forward-word
# bindkey "ee[D" backward-word
# bindkey "^H" backward-delete-word
# -- for rxvt
# bindkey "e[8~" end-of-line
# bindkey "e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
# bindkey "eOH" beginning-of-line
# bindkey "eOF" end-of-line
# -- for freebsd console
# bindkey "e[H" beginning-of-line
# bindkey "e[F" end-of-line
# -- completion in the middle of a line
# bindkey '^i' expand-or-complete-prefix

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
alias 'll=ls -Al --color=auto'
alias 'cbonsai=cbonsai -li --time=0.5'

export VISUAL='nano'
export EDITOR='nano'
