# Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This library is designed to print event names in colors. Events are displayed
# with bold black text representing the event name and a selected color
# background for emphasis.


function event::debug() {
  mprint::color -fg ${BLACK} -bg ${GRAY} -b " DEBUG "
}

function event::dev() {
  mprint::color -fg ${BLACK} -bg ${BLUE} -b " DEV "
}

function event::error() {
  mprint::color -fg ${BLACK} -bg ${RED} -b " ERROR "
}

function event::info() {
  mprint::color -fg ${BLACK} -bg ${CYAN} -b " INFO "
}

function event::success() {
  mprint::color -fg ${BLACK} -bg ${LIME} -b " SUCCESS "
}

function event::warning() {
  mprint::color -fg ${BLACK} -bg ${ORANGE} -b " WARNING "
}
