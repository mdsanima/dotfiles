# Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This is a custom configuration `.zshrc` file for Linux system. You can use
# this script for all available hosts in your network.


# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Include ~/.local/bin in $PATH
export PATH="$HOME/.local/bin:$PATH"

# Terminal colors
export TERM="xterm-256color"

# For the locale
export LC_ALL="C"

# Disabled underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Use case-sensitive completion
CASE_SENSITIVE="true"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Adjustment to the right side
ZLE_RPROMPT_INDENT=0

# Execution time stamp shown in the history command output
HIST_STAMPS="yyyy-mm-dd"

# History settings
HISTSIZE=500000
SAVEHIST=500000
HISTFILE="$HOME/.cache/zsh/zsh_history"

# Adding date time before each commands
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S   "

# Share history between terminals
setopt SHARE_HISTORY
# Don't store history entries that start with a space
setopt HIST_IGNORE_SPACE

# Custom plugins to load
plugins=(git zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting)

# Add zsh terminal
source "$ZSH/oh-my-zsh.sh"

# You can turn this off if you don't want to use it, just type predict-off
autoload predict-on
predict-on

# Async auto suggestions
unset ZSH_AUTOSUGGEST_USE_ASYNC

# Alias definitions
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Custom powerlevel10k settings
[ -f "$HOME/.config/zsh/themes/mdsanima.zsh" ] && source "$HOME/.config/zsh/themes/mdsanima.zsh"
