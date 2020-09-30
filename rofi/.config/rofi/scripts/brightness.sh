#!/bin/bash

# Rofi script to change screen brightness and update
# polybar brightness IPC module with the new value

# polybar-msg hook light 1   ---->   Update brightness IPC module

# options do be displayed
option0="< Back"
option1="20%"
option2="40%"
option3="60%"
option4="80%"
option5="100%"

# options passed to variable
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5"

selected="$(echo -e "$options" | rofi -lines 6 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "Brightness")"
case $selected in
    $option0) 
        rofiall;;
    $option1) 
        light -S 20
        polybar-msg hook light 1;;
    $option2) 
        light -S 40
        polybar-msg hook light 1;;
	$option3) 
        light -S 60
        polybar-msg hook light 1;;
	$option4) 
        light -S 80
        polybar-msg hook light 1;;
	$option5) 
        light -S 100
        polybar-msg hook light 1;;
esac