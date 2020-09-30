#!/bin/bash

# this menu will open a confirmation menu.

# options to be displayed
option0="< Back"
option1="Lock"
option2="Suspend"
option3="Shutdown"
option4="Reboot"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3\n$option4"

chosen="$(echo -e "$options" | rofi -lines 5 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "Power")"
case $chosen in
    $option0) rofiall;;
    $option1) export ROFI_CUSTOM_ACTION="Lock" && roconfirmationmenu;;
    $option2) export ROFI_CUSTOM_ACTION="Suspend" && roconfirmationmenu;;
    $option3) export ROFI_CUSTOM_ACTION="Shutdown" && roconfirmationmenu;;
    $option4) export ROFI_CUSTOM_ACTION="Reboot" && roconfirmationmenu;;
esac