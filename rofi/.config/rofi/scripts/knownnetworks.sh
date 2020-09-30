#!/bin/bash

# this menu will open a confirmation menu.

# options to be displayed
option0="< Back"
network1="Connect to '$(nmcli c show | awk 'FNR == 2 { print $1}')'"
network2="Connect to '$(nmcli c show | awk 'FNR == 3 { print $1}')'"

# options passed into variable
options="$option0\n$network1\n$network2"

chosen="$(echo -e "$options" | rofi -lines 3 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "Power")"
case $chosen in
    $option0) ronetworkmenu;;
    $option1) nmcli c up network1;;
    $option2) nmcli c up network2;;
esac