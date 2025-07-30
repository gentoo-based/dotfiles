#!/bin/env zsh
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export DOTNET_ROOT=$HOME/dotnet
autoload -U compinit promptinit
compinit
compdef _doas doas=doas
fastfetch
source $HOME/.config/env
#promptinit; prompt gentoo

source ~/.aliases
#cfetch

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --icons=auto $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza --icons=auto $realpath'

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
. /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
. /usr/share/zsh/site-functions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
