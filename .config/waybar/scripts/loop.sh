#!/bin/bash

current=$(playerctl loop 2>/dev/null)

case "$current" in
  "None")
    playerctl loop track
    notify-send -t 1500 "Loop Activated" "Track Looping Enabled"
    ;;
  "Track")
    playerctl loop playlist
    notify-send -t 1500 "Loop Activated" "Playlist Looping Enabled"
    ;;
  "Playlist")
    playerctl loop none
    notify-send -t 1500 "Loop Deactivated"
    ;;
  *)
    echo "Unexpected loop status: $current" >&2
    ;;
esac
