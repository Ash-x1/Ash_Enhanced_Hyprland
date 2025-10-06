#!/bin/bash
WALL_PATH_FILE="$HOME/.cache/last_wallpaper"
HYPR_WALL_PATH="$HOME/.config/hypr/current_wallpaper"

# if the file that stores the last wallpaper path exists, read it
if [ -f "$WALL_PATH_FILE" ]; then
    img_path="$(cat "$WALL_PATH_FILE")"
    # if the image path is a real file, copy the image to hypr current_wallpaper
    if [ -f "$img_path" ]; then
        cp -- "$img_path" "$HYPR_WALL_PATH"
        exit 0
    else
        echo "update-rofi-wall: image not found: $img_path" >&2
        exit 2
    fi
else
    echo "update-rofi-wall: last_wallpaper file not found" >&2
    exit 1
fi

