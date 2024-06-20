#!/bin/bash

device="intel_backlight"

current=$(brightnessctl -d "$device" g)
max=$(brightnessctl -d "$device" m)

current_value=$( echo "$current" | awk '{print $1}')

current_percent=$(( ($current_value * 100) / $max ))

function set() {
  brightnessctl -d $device set $1%
}

case $1 in
  up)
    if [ $current_percent -le 100 ];then
      new=$(($current_percent + 5))
      set $new
    fi
  ;;

  down)
    if [ $current_percent -ge 0 ];then
      new=$(($current_percent - 5))
      set $new
    fi
  ;;
esac
