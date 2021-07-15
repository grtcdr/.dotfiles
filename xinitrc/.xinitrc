#!/bin/sh

# Configuration
xrdb -merge ~/.Xresources

# Toggle Num-Lock
numlockx toggle 

# Load last set wallpaper
~/.fehbg

# Notification manager
dunst &

# Clipboard manager
greenclip daemon &

# Networking applet
nm-applet &

# Volume applet
volumeicon &

# Bluetooth applet
blueman-applet &

# Power management
xfce4-power-manager &

# Polkit agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Compositor
picom &

exec qtile
