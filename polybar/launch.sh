#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini

polybar -c ~/.config/polybar/mytheme/config.ini first 2>&1 | tee -a /tmp/polbar.log & disown
polybar -c ~/.config/polybar/mytheme/config.ini second 2>&1 | tee -a /tmp/polbar.log & disown
polybar -c ~/.config/polybar/mytheme/config.ini third 2>&1 | tee -a /tmp/polbar.log & disown
polybar -c ~/.config/polybar/mytheme/config.ini fourth 2>&1 | tee -a /tmp/polbar.log & disown
#polybar -c ~/.config/polybar/mytheme/config.ini first 2>&1 | tee -a /tmp/polybar.log & disown
#polybar -c ~/.config/polybar/mytheme/config.ini center 2>&1 | tee -a /tmp/polybar.log & disown
#polybar -c ~/.config/polybar/mytheme/config.ini right 2>&1 | tee -a /tmp/polybar.log & disown
#~/.config/polybar/scripts/nowPlayingLauncher.sh & disown

echo "Polybar launched..."
