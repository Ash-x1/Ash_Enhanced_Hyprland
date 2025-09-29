#!/bin/bash
current=$(playerctl position 2>/dev/null)
new_pos=$(echo "$current - 10" | bc)
if (( $(echo "$new_pos < 0" | bc -l) )); then
  new_pos=0
fi
playerctl position $new_pos
