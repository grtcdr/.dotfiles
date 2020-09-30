#!/bin/bash

# options to be displayed
option0="Confirm"
option1="Cancel"
# options passed into variable
options="$option0\n$option1"

chosen="$(echo -e "$options" | rofi -lines 2 -i -dmenu -location 3 -yoffset 34 -p "$ROFI_CUSTOM_ACTION")"

case $chosen in
    $option0) 
    if [ "$ROFI_CUSTOM_ACTION" == "Lock" ]; then 
        betterlockscreen -l
    elif [ "$ROFI_CUSTOM_ACTION" == "Suspend" ]; then
        systemctl suspend
    elif [ "$ROFI_CUSTOM_ACTION" == "Shutdown" ]; then
        systemctl poweroff
    elif [ "$ROFI_CUSTOM_ACTION" == "Reboot" ]; then
        systemctl reboot
    else 
        exit
    fi;;
    $option1) ropowermenu;;
esac