#!/bin/bash

# position
current_position=$(playerctl position 2>/dev/null)

# checking if it get the position correctly
if [[ -n "$current_position" ]]; then
  # +10sec
  new_position=$(echo "$current_position + 10" | bc)

  # getting the audio file
  duration_microseconds=$(playerctl metadata mpris:length 2>/dev/null)

  #checking if it get the file successfully
  if [[ -n "$duration_microseconds" ]]; then
  	# change into microseconds
    duration_seconds=$(echo "$duration_microseconds / 1000000" | bc)

    #ensure that the new position not exceed the audio file's duration
    if (( $(echo "$new_position" | bc) > $(echo "$duration_seconds" | bc) )); then
      new_position="$duration_seconds"
    fi

   	#set new position for audio file
    playerctl position "$new_position"
  fi
fi
