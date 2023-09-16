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
function color_print() {
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

# Printing the event log info.
function print_show_info() {
    local bg_color="$1"
    local fg_color="$2"
    local log_info="$3"
    color_print " MDSANIMA-DEV " -fg WHITE -bg $bg_color -nonewline
    color_print " $log_info" -fg $fg_color
}

# Printing the version and app name.
function print_show_version() {
    color_print ""
    print_show_info GRAY ORANGE "dotfiles $CURRENT_GIT_TAG"
    color_print ""
}

# Printing the help instruction.
function print_show_help() {
    print_show_version
    color_print "This installer is only available for Linux system." -fg WHITE
    color_print ""
    color_print "Copyright © 2023 MDSANIMA" -fg ORANGE
    color_print ""
}

print_show_help
