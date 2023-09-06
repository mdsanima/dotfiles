# Copyright © 2023 MDSANIMA

# Custom config `.zshrc` file for Ubuntu. You can use this script on all
# available hosts in the home labs network and a cloud servers thats you have.

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Python script WARNING which is not on PATCH.
export PATH=$HOME/.local/bin:$PATH

# Initial host name and user name.
name=$( ( echo $USER ) )
nhos=$( ( echo "$(cat /etc/hostname)" ) )

# Color WARNING! on powerlevel9k.zsh-theme
export TERM="xterm-256color"

# Disabled underline zsh-syntax-highlighting.
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Checking host and export path to oh-my-zsh installation.
if [[ $name = 'mdsanima' ]]; then
    export ZSH="/home/mdsanima/.oh-my-zsh"
elif [[ $name = 'ubuntu' ]]; then
    export ZSH="/home/ubuntu/.oh-my-zsh"
fi

# Set automatically run zsh script from `/etc/profile.d` directory.
# Don't run this on wsl-1 and jammy hosts.
if [[ $nhos != 'wsl-1' && $nhos != 'jammy' ]]; then
    if [[ -d /etc/profile.d ]]; then
        for i in /etc/profile.d/*.sh; do
            if [[ -r $i ]]; then
                . $i
            fi
        done
        unset i
    fi
fi

# Set name of the theme to load.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Execution time stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Adjustment to the right side.
ZLE_RPROMPT_INDENT=0

# History settings.
HISTSIZE=50000                          # History lines stored in memory.
HISTFILESIZE=20000                      # History lines stored on disk.
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S   "   # Adding date time before each commands.

# Custom plugins to load.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)

# Add zsh terminal.
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Type `dircolors --print-database` in terminal.
[[ -e $HOME/.dircolors ]] && eval "`dircolors --sh $HOME/.dircolors`"

# Checking host and set the colors and icons.
if [[ $nhos = 'none' ]]; then
    none=none
elif [[ $nhos == 'jammy' ]]; then
    typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=208
    typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='📡'
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=180
    typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=180
    typeset -g POWERLEVEL9K_DIR_BACKGROUND=38
    typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=40
    typeset -g POWERLEVEL9K_DIR_PREFIX='🎪 '
    export DENO_INSTALL="/home/mdsanima/.deno"
    export PATH="$DENO_INSTALL/bin:$PATH"
    export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
elif [[ $nhos == 'jammy-box' ]]; then
    typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=208
    typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='🔌'
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=180
    typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=180
    typeset -g POWERLEVEL9K_DIR_BACKGROUND=38
    typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=40
    typeset -g POWERLEVEL9K_DIR_PREFIX='🧰 '
elif [[ $nhos == 'wsl-1' ]]; then
    typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=208
    typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='📡'
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=180
    typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=180
    typeset -g POWERLEVEL9K_DIR_BACKGROUND=38
    typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=40
    typeset -g POWERLEVEL9K_DIR_PREFIX='👻 '
    export DENO_INSTALL="/home/mdsanima/.deno"
    export PATH="$DENO_INSTALL/bin:$PATH"
    export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
elif [[ $nhos == 'macbook' ]]; then
    typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=45
    typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='🔌'
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=45
    typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=45
    typeset -g POWERLEVEL9K_DIR_BACKGROUND=38
    typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=40
    typeset -g POWERLEVEL9K_DIR_PREFIX='🍎 '
    export DENO_INSTALL="/home/mdsanima/.deno"
    export PATH="$DENO_INSTALL/bin:$PATH"
    export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
elif [[ $nhos == 'jet-1' || $nhos == 'jet-2' ]]; then
    typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=154
    typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='🔭'
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=154
    typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=154
    typeset -g POWERLEVEL9K_DIR_BACKGROUND=38
    typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=40
    typeset -g POWERLEVEL9K_DIR_PREFIX='🦈 '
elif [[ $nhos == 'rpi-0' ]]; then
    typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=203
    typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='🔬'
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=203
    typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=203
    typeset -g POWERLEVEL9K_DIR_BACKGROUND=38
    typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=40
    typeset -g POWERLEVEL9K_DIR_PREFIX='💀 '
    typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
elif [[ $nhos == 'rpi-1' || $nhos == 'rpi-2' || $nhos == 'rpi-3' || $nhos == 'rpi-4' || $nhos == 'rpi-5' || $nhos == 'rpi-6' || $nhos == 'rpi-7' ]]; then
    typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=209
    typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='💉'
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=209
    typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=209
    typeset -g POWERLEVEL9K_DIR_BACKGROUND=38
    typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=40
    typeset -g POWERLEVEL9K_DIR_PREFIX='💩 '
fi

# This is a extensions for zsh.
# autoload predict-on
# predict-on

# Alias definitions from bash.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Alias definitions from zsh.
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
