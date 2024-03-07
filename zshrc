#!/bin/zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git ssh-agent zsh-syntax-highlighting)

autoload -U compinit
compinit

setopt correctall

autoload -U promptinit
promptinit

export PS1="%B[%n@%M %~]>%b "

export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups
setopt hist_ignore_space

alias ll="ls -al"
alias llc="clear && ls -al"
alias brightnessto="sudo tee /sys/class/backlight/intel_backlight/brightness <<< "
alias kblightto="sudo tee /sys/class/leds/asus::kbd_backlight/brightness <<< "

# Up arrow search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

# Temp
alias ssh_to_hpc="ssh djameson@eecs-hpc-1.mines.edu"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

source $ZSH/oh-my-zsh.sh

zstyle :omz:plugins:ssh-agent identities id_ed25519
