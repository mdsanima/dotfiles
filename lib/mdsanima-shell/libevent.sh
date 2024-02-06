# Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This library is designed to print event names in colors. Events are displayed
# with bold black text representing the event name and a selected color
# background for emphasis.


function event::debug() {
  print::color -fg ${BLACK} -bg ${GRAY} -b " DEBUG "
}

function event::dev() {
  print::color -fg ${BLACK} -bg ${BLUE} -b " DEV "
}

function event::error() {
  print::color -fg ${BLACK} -bg ${RED} -b " ERROR "
}

function event::info() {
  print::color -fg ${BLACK} -bg ${SKY} -b " INFO "
}

function event::success() {
  print::color -fg ${BLACK} -bg ${LIME} -b " SUCCESS "
}

function event::warning() {
  print::color -fg ${BLACK} -bg ${ORANGE} -b " WARNING "
}
