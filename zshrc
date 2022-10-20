#!/bin/zsh

autoload -U compinit
compinit

setopt correctall

autoload -U promptinit
promptinit

# export PS1="%B[%n@%M %~]>%b "

autoload -U colors && colors
PROMPT="%n@%{$fg_no_bold[yellow]%}%M%{$reset_color%} %{$fg_no_bold[cyan]%}%~%{$reset_color%}> "

export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups
setopt hist_ignore_space

alias ls="ls --color=auto"
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

export POTAT=1
if [ $POTAT ]; then
    if ps -p $SSH_AGENT_PID > /dev/null; then
	echo "ssh-agent is already running"
    else
        eval `ssh-agent`
	ssh-add -k
    fi
fi
