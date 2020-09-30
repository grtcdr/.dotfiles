#!/bin/bash

# options to be displayed
option0="< Back"

mapfile -t array < <( pwgen -sncy1 26 8 )

# options to be displyed
options="$option0\n${array[0]}\n${array[1]}\n${array[2]}\n${array[3]}\n${array[4]}"

selected="$(echo -e "$options" | rofi -lines 6 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "Generate Passwords")"
case $selected in
    $option0) routilities;;
    ${array[0]}) echo "${array[0]}" | xsel -b;;
    ${array[1]}) echo "${array[1]}" | xsel -b;; 
    ${array[2]}) echo "${array[2]}" | xsel -b;; 
    ${array[3]}) echo "${array[3]}" | xsel -b;; 
    ${array[4]}) echo "${array[4]}" | xsel -b;; 
esac