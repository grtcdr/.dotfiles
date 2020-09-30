#!/bin/bash

pkgs=$(checkupdates)
exit_status=$?
num_pkgs=$(checkupdates | wc -l)
num_selections=$((num_pkgs + 1))
option0="< Back"
options="$option0\n$pkgs"

if [ $exit_status -eq 1 ]; then
    selected="$(echo -e "< Back\nCould not fetch updates" | rofi -lines 2 -i -dmenu -location 3 -yoffset 34 -p "Updates")"  
elif [ $exit_status -eq 2 ]; then
    selected="$(echo -e "< Back\nSystem is up-to-date" | rofi -lines 2 -i -dmenu -location 3 -yoffset 34 -p "Updates")"
else
selected="$(echo -e "$options" | rofi -lines $num_selections -i -dmenu -location 3 -yoffset 34 -p "Updates")"

case $selected in
    $option0) rofiall;;
    *) exit;;
esac
fi