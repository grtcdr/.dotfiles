#!/bin/bash

# options to be displayed
option0="< Back"
option1="Entire screen"
option2="Select area"
option3="Select window"

# options to be displyed
options="$option0\n$option1\n$option2\n$option3"

selected="$(echo -e "$options" | rofi -lines 4 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "Screenshot")"
case $selected in
    $option0) rofiall;;
    $option1) 
    scrot '%Y-%m-%d_$wx$h.png' -e 'mv $f ~/Pictures/Screenshots/'
    dunstify -r 1337 -i $HOME/Pictures/Icons/screenshot.png "Screenshot taken";;
    $option2) 
    scrot '%Y-%m-%d_$wx$h.png' -e 'mv $f ~/Pictures/Screenshots/' -s
    dunstify -r 1337 -i $HOME/Pictures/Icons/screenshot.png "Screenshot taken";;
    $option3)
    dunstify -r 1337 "Please select a window"
    sleep 2
    scrot -u '%Y-%m-%d_$wx$h.png' -e 'mv $f ~/Pictures/Screenshots/' 
    dunstify -r 1337 -i $HOME/Pictures/Icons/screenshot.png "Screenshot taken";;
esac