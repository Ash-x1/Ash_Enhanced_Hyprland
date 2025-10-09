#!/usr/bin/env bash

emoji_file="$HOME/.config/rofi/rofi-scripts/emojis/all_emojis.txt"

# عرض كل السطر (إيموجي + نصوص) للبحث
chosen=$(cat "$emoji_file" | rofi -dmenu -i -p "Select Emoji")

if [[ -n "$chosen" ]]; then
    # استخرج العمود الأول فقط (الإيموجي نفسه)
    emoji=$(echo "$chosen" | awk '{print $1}')

    # انسخ الإيموجي فقط
    echo -n "$emoji" | wl-copy

    # اكتب الإيموجي في الحقل الحالي
    wtype "$emoji"
fi
