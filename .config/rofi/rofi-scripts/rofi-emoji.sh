#!/usr/bin/env bash

emoji_file="$HOME/.config/rofi/rofi-scripts/emojis/all_emojis.txt"

# Search for "emoji + text"
chosen=$(cat "$emoji_file" | rofi -dmenu -i -p "Select Emoji")

if [[ -n "$chosen" ]]; then
	#Pick only the 1st column
    emoji=$(echo "$chosen" | awk '{print $1}')

    # Copy the emoji only
    echo -n "$emoji" | wl-copy

    # 
    wtype "$emoji"
fi
