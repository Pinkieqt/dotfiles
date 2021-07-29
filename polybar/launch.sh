#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar bar --config="~/.config/polybar/config_twobars"  &
polybar sec --config="~/.config/polybar/config_twobars"  &
