#!/bin/zsh

# One Liner
[[ "$(tty)" == "/dev/tty1" ]] && export "$(dbus-launch)" && dbus-run-session sway

# If Statement

#if [[ "$(tty)" == "/dev/tty1" ]] then
#  exec Hyprland
#fi
