#!/bin/bash

# options to be displayed
option0="< Back"
option1="Battery"
# options passed into variable
options="$option0\n$option1"

chosen="$(echo -e "$options" | rofi -lines 2 -selected-row 1 -i -dmenu -location 3 -yoffset 34 -p "Information")"
case $chosen in
    $option0) rofiall;;
    $option1) robatinfo;;
esac