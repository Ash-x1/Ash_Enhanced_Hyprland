#!/bin/bash

status=$(playerctl status 2>/dev/null)
artist=$(playerctl metadata artist 2>/dev/null)
title=$(playerctl metadata title 2>/dev/null)

if [ "$status" == "Playing" ]; then
    icon=""
elif [ "$status" == "Paused" ]; then
    icon=""
else
    icon=""
fi

# play status + album/artist name
echo "{\"text\": \"$icon $artist - $title\", \"class\": \"$status\"}"
