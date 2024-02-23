# Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# Library for utility functions.

readonly clean_line_seq="\r\e[0K"

function util::is_integer() {
  local arg="$1"
  if [[ "$arg" =~ ^[0-9]+$ ]]; then
    return 0
  else
    return 1
  fi
}

function util::is_number() {
  local arg="$1"
  util::is_integer "$arg"
}

function util::is_string() {
  local arg="$1"
  if [[ "$arg" =~ ^[a-zA-Z]+$ ]]; then
    return 0
  else
    return 1
  fi
}

function util::is_text() {
  local arg="$1"
  util::is_string "$arg"
}

function util::is_package_installed() {
  local package="$1"
  local query=$(dpkg-query -W -f='${Status}' "${package}" 2>/dev/null)
  if echo "${query}" | grep -q "install ok installed"; then
    return 0
  else
    return 1
  fi
}

function util::one_line_progress() {
  local command="$@"
  ${command} 2>&1 | while IFS= read -r line; do
    echo -n -e "${clean_line_seq}${line}"
  done
}
