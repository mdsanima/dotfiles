#!/usr/bin/env bash

# Copyright © 2023 MDSANIMA

# This is a installation script for `Oh My Zsh` terminal configuration. This
# script also colorize print text in a fancy way.

# List of packages to install.
APT_PACKAGES="python3-pip zsh powerline fonts-powerline zsh-theme-powerlevel9k"
APT_PACKAGES_OPTIONAL="curl git htop vim tmux mc neofetch cmatrix ffmpeg"

# Get the current tag from the Git repository.
CURRENT_GIT_TAG=$(git describe --tags)

# Import default color definition.
source "$PWD/.local/bin/mdsanima-color"

# Help function for printing text in color.
function print_color() {
    local text="$1"
    local fg_color
    local bg_color
    local no_newline=false

    shift 1

    # Iterate over all arguments.
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -fg)
                fg_color="$2"
                shift 2
                ;;
            -bg)
                bg_color="$2"
                shift 2
                ;;
            -nonewline)
                no_newline=true
                shift 1
                ;;
            *)
                echo "unrecognized argument: $1"
                return 1
                ;;
        esac
    done

    local fg_code
    local bg_code
    local reset_code="\x1b[0m"

    if [[ "$fg_color" =~ ^[0-9]+$ ]]; then
        fg_code="\x1b[38;5;${fg_color}m"
    elif [[ -v "$fg_color" ]]; then
        fg_code="\x1b[38;5;${!fg_color}m"
    fi

    if [[ "$bg_color" =~ ^[0-9]+$ ]]; then
        bg_code="\x1b[48;5;${bg_color}m"
    elif [[ -v "$bg_color" ]]; then
        bg_code="\x1b[48;5;${!bg_color}m"
    fi

    if [[ "$no_newline" == true ]]; then
        echo -e -n "${fg_code}${bg_code}${text}${reset_code}"
    else
        echo -e "${fg_code}${bg_code}${text}${reset_code}"
    fi
}

# Writing the event log info.
function write_show_info() {
    local bg_color="$1"
    local fg_color="$2"
    local log_info="$3"
    print_color " MDSANIMA-DEV " -fg WHITE -bg $bg_color -nonewline
    print_color " $log_info" -fg $fg_color
}

# Writing the version and app name.
function write_show_version() {
    print_color ""
    write_show_info GRAY ORANGE "dotfiles $CURRENT_GIT_TAG"
    print_color ""
}

# Writing the help instruction.
function write_show_help() {
    write_show_version
    print_color "This installer is only available for Linux on Bash terminal." -fg WHITE
    print_color ""
    print_color "Copyright © 2023 MDSANIMA" -fg ORANGE
    print_color ""
}

write_show_help
