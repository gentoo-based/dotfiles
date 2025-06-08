#!/bin/zsh

# One Liner
[[ "$(tty)" == "/dev/tty1" ]] && dbus-launch --exit-with-session --sh-syntax niri --session

# If Statement

#if [[ "$(tty)" == "/dev/tty1" ]] then
#  exec Hyprland
#fi
