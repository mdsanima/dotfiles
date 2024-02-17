# Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# Library for utility functions.

# Cleaned line sequence
readonly clean_line_seq="\r\e[0K"

#-------------------------------------------------------------------------------
# This function provides a simple way to check if a package is installed.
#
# Arguments:
#   <package>  The package name to check if is installed, required
#
# Returns:
#   0 if the package is installed
#   1 if the package is not installed
#
# Usage:
#   util::check_package_installed <package>
#   util::check_package_installed git
#-------------------------------------------------------------------------------
function util::check_package_installed() {
  local package="$1"
  local query=$(dpkg-query -W -f='${Status}' "${package}" 2>/dev/null)

  # Check if the package is installed
  if echo "${query}" | grep -q "install ok installed"; then
    return 0
  else
    return 1
  fi
}

#-------------------------------------------------------------------------------
# This function provides a simple way to execute bash commands with one line in
# the stdout progress by reading each line of the stdout and displaying it with
# overwriting the previous line.
#
# Arguments:
#   <command>  The command to be executed, required
#
# Usage:
#   util::one_line_progress <command>
#   util::one_line_progress sudo apt update
#-------------------------------------------------------------------------------
function util::one_line_progress() {
  local command="$@"

  # Execute the command and read each line of the stdout
  ${command} 2>&1 | while IFS= read -r line; do
    echo -n -e "${clean_line_seq}${line}"
  done
}
