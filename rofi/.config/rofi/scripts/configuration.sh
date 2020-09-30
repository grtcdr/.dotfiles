#!/bin/bash

# options do be displayed
editor="code"
option0="< Back"
option1="bspwm"
option2="sxhkd"
option3="polybar"
option4="zsh"
option5="vim"
option6="rofi"

# options passed to variable
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5\n$option6"

selected="$(echo -e "$options" | rofi -lines 7 -i -selected-row 1 -dmenu -location 3 -yoffset 34 -p "Configuration")"
case $selected in
    $option0) rofiall;;
    $option1) $editor ~/.config/bspwm/bspwmrc;;
    $option2) $editor ~/.config/sxhkd/sxhkdrc;;
	$option3) $editor ~/.config/polybar;;
	$option4) $editor ~/.zshrc;;
	$option5) $editor ~/.vimrc;;
    $option6) $editor ~/.config/rofi;;
esac