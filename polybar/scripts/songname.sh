#!/usr/bin/env bash

title=$(playerctl metadata title 2>/dev/null)

#echo "$title"
if [ "$title" != "" ]; then
  echo "$title"
else
  echo "Just Play something... 󰽰 "
fi


