#!/bin/bash

# Define the directory where the images are located
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# Check if the directory exists
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Directory $WALLPAPER_DIR does not exist."
    exit 1
fi

# Loop through the images and pass the full path as icons for preview
choices=""
for img in "$WALLPAPER_DIR"/*.{jpg,png}; do
    [ -f "$img" ] || continue
    filename=$(basename "$img")
    choices+="$filename\0icon\x1f$img\n"
done

# Pass the list of wallpapers to Rofi with icons
chosen=$(echo -en "$choices" | rofi -dmenu -p "" -theme-str 'element-icon { size: 80px; }')

# If a wallpaper is selected, set it and apply pywal
if [ -n "$chosen" ]; then
    selected_wallpaper="$WALLPAPER_DIR/$chosen"

    # Change the wallpaper
    swww img "$selected_wallpaper" --transition-type random --transition-duration 3 --transition-fps 60

    # Apply pywal theme from image
    wal -i "$selected_wallpaper" --backend wal

    # Reload waybar (if using pywal colors there)
    pkill waybar
    sleep 0.3
    waybar &

    # Save the wallpaper path (optional)
    echo "$selected_wallpaper" > ~/.cache/last_wallpaper
fi
