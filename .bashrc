# Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This is a custom configuration `.bashrc` file for Linux system. You can use
# this script for all available hosts in your network.


# Python script `WARNING` which is not on $PATH
export PATH=$HOME/.local/bin:$PATH

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# History settings
HISTSIZE=50000                          # History lines stored in memory
HISTFILESIZE=20000                      # History lines stored on disk
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S   "   # Adding date time before each commands

# Check the window size after each command
shopt -s checkwinsize

# Make less more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set variable identifying the chroot you work in used in the prompt below
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Set a fancy prompt non-color
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Shell color prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	    color_prompt=yes
    else
	    color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ "
else
    PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\n\$ "
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir on host
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls="ls --color=auto"
    alias grep="grep --color=auto"
    alias dir="dir --color=auto"
    alias vdir="vdir --color=auto"

    alias fgrep="fgrep --color=auto"
    alias egrep="egrep --color=auto"
fi

# Colored GCC warnings and errors
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

# Some more ls aliases
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# Add an alert alias for long running commands
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Enable programmable completion features
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# Cuda toolkit `nvcc` path on nVidia Jetson Nano hosts
if [[ $HOST == "jet-1" || $HOST == "jet-2" ]]; then
    export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi

# Alias definitions for BASH
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Alias definitions for ZSH
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
