#!/bin/bash

# the values assigned to these variables can be found by running xrandr
monitor0="eDP1"
monitor1="HDMI-1-0"

# options to be displyed
option0="< Back"
option1="Activate all monitors"
option2="Monitor $monitor0 off"
option3="Monitor $monitor1 off"
option4="Monitor $monitor0 primary"
option5="Monitor $monitor1 primary"
option6="Monitor $monitor1 same as $monitor0"
option7="Monitor $monitor1 right of $monitor0"
option8="Monitor $monitor1 left of $monitor0"
option9="Monitor $monitor1 above $monitor0"
option10="Monitor $monitor1 below $monitor0"
option11="Rotate monitor $monitor1 right"
option12="Rotate monitor $monitor1 left"
option13="Rotate monitor $monitor1 normal"

# Variable passed to rofi
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5\n$option6\n$option7\n$option8\n$option9\n$option10\n$option11\n$option12\n$option13"

selected="$(echo -e "$options" | rofi -lines 14 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "Display")"
case $selected in
    $option0) rofiall;;
    $option1) xrandr --auto;;
    $option2) xrandr --output $monitor0 --off;;
    $option3) xrandr --output $monitor1 --off;;
	$option4) xrandr --output $monitor0 --primary;;
	$option5) xrandr --output $monitor1 --primary;;
    $option6) xrandr --output $monitor1 --same-as $monitor0;;
    $option7) xrandr --output $monitor1 --right-of $monitor0;;
    $option8) xrandr --output $monitor1 --left-of $monitor0;;
    $option9) xrandr --output $monitor1 --above $monitor0;;
    $option10) xrandr --output $monitor1 --below $monitor0;;
    $option11) xrandr --output $monitor1 --rotate left;;
    $option12) xrandr --output $monitor1 --rotate right;;
    $option13) xrandr --output $monitor1 --rotate normal;;
esac