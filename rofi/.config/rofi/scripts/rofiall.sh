#!/bin/bash

# options to be displayed
option0="Power"
option1="Brightness"
option2="Display"
option3="Screenshot"
option4="Configuration"
option5="Network"
option6="Updates"
option7="Drives"
option8="Utilities"
option9="Information"
clipbrd="Clipboard"
# options passed into variable
options="$option0\n$option1\n$option2\n$option3\n$option4\n$clipbrd\n$option5\n$option6\n$option7\n$option8\n$option9"

chosen="$(echo -e "$options" | rofi -lines 11 -i -dmenu -location 3 -yoffset 34 -p "System")"
case $chosen in
    $option0) ropowermenu;;
    $option1) robrightnessmenu;;
    $option2) roxrandrmenu;;
    $option3) roscrotmenu;;
    $option4) roconfiguration;;
    $clipbrd) clipmenu;;
    $option5) ronetworkmenu;;
    $option6) roupdatemenu;;
    $option7) rodrivemenu;;
    $option8) routilities;;
    $option9) roinfomenu;;
esac