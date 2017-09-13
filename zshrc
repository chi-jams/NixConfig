#! /bin/zsh

autoload -U compinit
compinit

setopt correctall

autoload -U promptinit
promptinit

export PS1="[%n@%M %~]> "

export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups
setopt hist_ignore_space

alias ll="ls -al"

