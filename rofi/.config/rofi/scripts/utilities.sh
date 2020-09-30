#!/bin/bash

# options to be displayed
option0="< Back"
option1="Timetable"
option2="Generate passwords"

# options passed into variable
options="$option0\n$option1\n$option2"

chosen="$(echo -e "$options" | rofi -lines 3 -selected-row 1 -i -dmenu -location 3 -yoffset 34 -p "Utilities")"
case $chosen in
    $option0) rofiall;;
    $option1) sh $HOME/Documents/Timetables/script/timetable.sh;;
    $option2) ropwgenmenu;;
esac