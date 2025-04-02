#!/usr/bin/env bash

# Copyright (c) 2024-2025 Marcin Różewski, Amarokelab.
# All rights reserved.
#
# Installation script for the dotfiles that support GNU/Linux systems like
# Debian, Ubuntu or many others.  This script include custom library thats help
# write this script, and is including on this repository.  This script and the
# library is still work in progress and subject to change.  I still need to
# think about this repository code, and for now this is a base code.

# Exit immediately if a command exits with a non-zero status
set -e

# Import necessary libraries
source "$PWD/lib/mdsanima-shell/libcolor.sh"
source "$PWD/lib/mdsanima-shell/libconvert.sh"
source "$PWD/lib/mdsanima-shell/libevent.sh"
source "$PWD/lib/mdsanima-shell/libprint.sh"
source "$PWD/lib/mdsanima-shell/libutil.sh"

# Initialize event functions
INFO=$(event::info)
ERROR=$(event::error)
SUCCESS=$(event::success)

# Check the user
if [[ "$USER" == "root" ]]; then
    echo -e "${ERROR} Do not run 'install.sh' script as root." >&2
    exit 1
fi

# List of packages to install
_APT_PACKAGES="python3-pip zsh powerline fonts-powerline zsh-theme-powerlevel9k"
_APT_PACKAGES_OPTIONAL="curl git htop vim tmux mc neofetch cmatrix ffmpeg"

# Get tags from the Git repository
CURRENT_GIT_TAG=$(git describe --tags)
_LATEST_GIT_TAG=$(git describe --tags --abbrev=0)

function dotfiles_installer_info() {
    print::color -fg ${GRAY} "Copyright (c) 2024-2025 Marcin Różewski, Amarokelab. All rights reserved.\n"
    print::color -fg ${SKY} -b -n "  MDSANIMA-SHELL"
    print::color -fg ${BLUE} " dotfiles ${CURRENT_GIT_TAG}"
    print::color -fg ${TOKYO} "  This installer is only available for GNU/Linux systems.\n"
}

dotfiles_installer_info
echo -e "${INFO} Install prerequisites on your system."
echo "Running apt update ..."
echo "Running apt upgrade ..."
echo -e "${SUCCESS} Configurations for the dotfiles was installed."
echo "Running test code ..."
echo -e "${ERROR} This is a fake installer. Still work in progress."
