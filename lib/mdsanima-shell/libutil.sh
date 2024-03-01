# Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# Library for utility functions.

readonly clean_line_seq="\r\e[0K"

function util::is_package_installed() {
  local package="$1"
  local query=$(dpkg-query -W -f='${Status}' "${package}" 2>/dev/null)
  if echo "${query}" | grep -q "install ok installed"; then
    # echo "SUCCESS $package is installed"
    return 0
  else
    # echo "ERROR $package is not installed"
    return 1
  fi
}

function util::is_installed() {
  local package="$1"
  util::is_package_installed "$package"
}

function util::is_integer() {
  local argument="$1"
  if [[ "$argument" =~ ^[0-9]+$ ]]; then
    # echo "SUCCESS $argument is a integer"
    return 0
  else
    # echo "ERROR $argument is not a integer"
    return 1
  fi
}

function util::is_float() {
  local argument="$1"
  if [[ "$argument" =~ ^[0-9]+\.[0-9]+$ ]]; then
    # echo "SUCCESS $argument is a float"
    return 0
  else
    # echo "ERROR $argument is not a float"
    return 1
  fi
}

function util::is_number() {
  local argument="$1"
  if util::is_integer "$argument" || util::is_float "$argument"; then
    # echo "SUCCESS $argument is a number"
    return 0
  else
    # echo "ERROR $argument is not a number"
    return 1
  fi
}

function util::is_string() {
  local argument="$1"
  if [[ "$argument" =~ ^[a-zA-Z]+$ ]]; then
    # echo "SUCCESS $argument is a string"
    return 0
  else
    # echo "ERROR $argument is not a string"
    return 1
  fi
}

function util::is_special_char() {
  local argument="$1"
  local special_chars="!@#$%^&*()_+-=[]{}|;:,.<>/?~'\"\\\ "
  if [[ "$special_chars" =~ "$argument" ]]; then
    # echo "SUCCESS $argument is a special char"
    return 0
  else
    # echo "ERROR $argument is not a special char"
    return 1
  fi
}

function util::is_first_char_special() {
  local argument="$1"
  local first_char="${argument:0:1}"
  if util::is_special_char "$first_char"; then
    # echo "SUCCESS $first_char is a first special char"
    return 0
  else
    # echo "ERROR $first_char is not a first special char"
    return 1
  fi
}

function util::is_hex() {
  local hex="$1"
  local first="${hex:0:1}"
  if [[ "$first" == "#" ]] && [[ "${#hex}" -eq 7 ]] && [[ "${hex:1}" =~ ^[0-9a-fA-F]+$ ]]; then
    # echo "SUCCESS $hex is a valid hex"
    return 0
  else
    # echo "ERROR $hex is not a valid hex"
    return 1
  fi
}

function util::contains_special_char() {
  local argument="$1"
  if [[ "$argument" =~ [^[:alnum:]_] ]]; then
    # echo "SUCCESS $argument contains special char"
    return 0
  else
    # echo "ERROR $argument is not contains special char"
    return 1
  fi
}

function util::one_line_progress() {
  local command="$@"
  ${command} 2>&1 | while IFS= read -r line; do
    echo -n -e "${clean_line_seq}${line}"
  done
}
