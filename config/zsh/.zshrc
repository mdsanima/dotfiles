# Copyright (c) 2024-2025 Marcin Różewski, Amarokelab.
# All rights reserved.
#
# Custom configuration file for the GNU/Linux systems like Debian, Ubuntu or
# many others.  You can use this script for all available hosts in your homelab
# network.  This script configuration is still work in progress and subject to
# change.  I still need to think about this repository code, and for now this
# is a base code.

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-$(whoami).zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-$(whoami).zsh"
fi

# If you come from bash you might have to change your path
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Path to ohmyzsh installation directory
export ZSH="$HOME/.oh-my-zsh"

# Include `~/.local/bin` in path
export PATH="$HOME/.local/bin:$PATH"

# Terminal colors
export TERM="xterm-256color"

# The locale config for nice files sort on `ls -l` command
export LC_COLLATE="C"

# Disabled underline style
if [[ -z "${ZSH_HIGHLIGHT_STYLES+x}" ]]; then
    typeset -A ZSH_HIGHLIGHT_STYLES
fi

# Set undarline style
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Use case-sensitive completion
CASE_SENSITIVE="true"

# Remind me to update when it's time and how often in days
zstyle ":omz:update" mode reminder
zstyle ":omz:update" frequency 7

# Enable command auto-correction
ENABLE_CORRECTION="false"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Adjustment to the right side
ZLE_RPROMPT_INDENT=0

# When Neovim is opened with NvChad configuration, customize the right prompt
if [[ -n $MYVIMRC ]]; then
    ZLE_RPROMPT_INDENT=2
fi

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

# Dont store history entries that start with a space
setopt HIST_IGNORE_SPACE

# Custom plugins to load
plugins=(
    git zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting
)

# Add zsh terminal
source "$ZSH/oh-my-zsh.sh"

# You can turn off this if you dont want to use it, run `predict-off` command
autoload predict-on
predict-on

# Async auto suggestions
unset ZSH_AUTOSUGGEST_USE_ASYNC

# Aliases definition, run `alias` command to see full list
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Custom theme, run `p10k configure` command to customize or edit theme file
local MDSANIMA_THEME="$HOME/.config/zsh/themes/mdsanima.zsh"
[ -f $MDSANIMA_THEME ] && source $MDSANIMA_THEME
