setopt IGNOREEOF
export LANG=ja_JP.UTF-8

export PATH="$HOME/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

autoload -Uz colors
colors

autoload -Uz compinit
compinit

setopt share_history
setopt histignorealldups
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt auto_cd

setopt auto_pushd
setopt pushd_ignore_dups

setopt correct

alias -g L='| less'
alias -g H='| head'
alias -g G='| grep'
alias -g GI='| grep -ri'

alias lst='ls -ltr --color=auto'
