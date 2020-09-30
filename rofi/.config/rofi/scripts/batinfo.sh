#!/bin/bash

option0="< Back"
timetofull=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | sed -n '/time to full:/p' | awk '$1=$1' | awk '{gsub("time to full: ", "");print}')
timetoempty=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | sed -n '/time to empty:/p' | awk '$1=$1' | awk '{gsub("time to empty: ", "");print}')
state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/state:/ {print $NF}')
capacity=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/capacity:/ {print $NF}')
percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {print $NF}')
uptime=$(uptime --pretty | sed 's/up //' | sed 's/\ years\?,/y/' | sed 's/\ weeks\?,/w/' | sed 's/\ days\?,/d/' | sed 's/\ hours\?,\?/h/' | sed 's/\ minutes\?/m/')

if [ $state == 'charging' ]; then
    chosen="$(echo -e "$option0\nBattery: $state\nPercentage: $percentage\nCapacity: $capacity\nUptime: $uptime\nTime until full: $timetofull" | rofi -lines 6 -i -dmenu -location 3 -yoffset 34 -p "Information")"
elif [ $state == 'discharging' ]; then
    chosen="$(echo -e "$option0\nBattery: $state\nPercentage: $percentage\nCapacity: $capacity\nUptime: $uptime\nTime until empty: $timetoempty" | rofi -lines 6 -i -dmenu -location 3 -yoffset 34 -p "Information")"
else
    chosen="$(echo -e "$option0\nBattery: $state\nPercentage: $percentage\nCapacity: $capacity\nUptime: $uptime" | rofi -lines 5 -i -dmenu -location 3 -yoffset 34 -p "Information")"
fi

case $chosen in
    $option0) roinfomenu;;
esac