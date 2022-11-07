#!/bin/sh
xrandr --output eDP-1 --dpi 100 --mode 1920x1080 --pos 0x540 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --dpi 163  --mode 3840x2160 --pos 1920x0 --rotate normal --output HDMI-2 --off
i3-msg restart > /dev/null
