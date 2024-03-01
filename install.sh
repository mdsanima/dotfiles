#!/bin/bash

# Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# Installation script for dotfiles for GNU/Linux systems like Debian or Ubuntu.

# Import necessary libraries
source "$PWD/lib/mdsanima-shell/libcolor.sh"
source "$PWD/lib/mdsanima-shell/libprint.sh"
source "$PWD/lib/mdsanima-shell/libutil.sh"

# List of packages to install
APT_PACKAGES="python3-pip zsh powerline fonts-powerline zsh-theme-powerlevel9k"
APT_PACKAGES_OPTIONAL="curl git htop vim tmux mc neofetch cmatrix ffmpeg"

# Get the current tag from the Git repository
CURRENT_GIT_TAG=$(git describe --tags)

function dotfiles_installer() {
  print::color -fg ${WHITE} -bg ${BLUE} -b -n " MDSANIMA DEV "
  print::color -fg ${BLUE} " dotfiles ${CURRENT_GIT_TAG}\n"
  print::color -fg ${WHITE} "This installer is only available for GNU/Linux systems like Debian or Ubuntu.\n"
  print::color -fg ${GRAY} "Copyright (c) 2024 MDSANIMA DEV. All rights reserved. Licensed under the MIT license."
}

dotfiles_installer
