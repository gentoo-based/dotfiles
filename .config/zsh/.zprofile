#!/bin/zsh

# One Liner
[[ "$(tty)" == "/dev/tty1" ]] && exec dbus-launch --sh-syntax --exit-with-session niri --session
