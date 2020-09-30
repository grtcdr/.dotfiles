#!/bin/bash

# requires NetworkManager
networkname=$(nmcli c show | awk 'FNR == 2 { print $1}')

# options do be displayed
option0="< Back"
option1="Toggle WIFI"
option2="Known Networks"

# options passed to variable
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "$networkname")"
case $selected in
    $option0) 
        rofiall;;
    $option1) 
        system.sh network toggle;;
    $option2)
        roknownnetworks;;
esac