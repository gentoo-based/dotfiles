#!/bin/zsh

# One Liner
[[ "$(tty)" == "/dev/tty1" ]] && exec niri --session
