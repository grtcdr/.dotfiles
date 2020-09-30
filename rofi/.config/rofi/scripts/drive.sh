#!/bin/bash


option0="< Back"
# Name of the folder where your drive is mounted
drive1="HDrive"
drive1_path="/dev/sda2"
destination="/run/media/grtcdr"

check_mountpoint=$(mountpoint $destination/$drive1)
exit_status=$?

if [ $exit_status -eq 1 ]; then
    selected="$(echo -e "$option0\nMount $drive1" | rofi -lines 2 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "Drives")"
    mounted="false"
else
    selected="$(echo -e "$option0\nUnmount $drive1" | rofi -lines 2 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "Drives")"
    mounted="true"
fi

case $selected in
    $option0) rofiall;;
    "Mount $drive1" | "Unmount $drive1")
    if [ $exit_status -eq 1 ]; then
        udisksctl mount -b $drive1_path
    else
        udisksctl unmount -b $drive1_path
    fi;;
esac