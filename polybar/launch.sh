#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit


polybar -c ~/.config/polybar/rice/config.ini main 2>&1 | tee -a /tmp/polbar.log & disown

echo "Polybar launched..."
