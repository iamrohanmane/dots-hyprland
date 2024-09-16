#!/bin/bash

INCREMENT=5
SINK=@DEFAULT_SINK@

current_volume() {
    pactl get-sink-volume "$SINK" | awk '{print $5}' | sed 's/%//'
}

current_mute() {
    pactl get-sink-mute "$SINK" | awk '{print $2}'
}

adjust_volume() {
    local delta=$1
    local new_volume=$(( $(current_volume) + delta ))
    if [ "$new_volume" -gt 100 ]; then
        new_volume=100
    elif [ "$new_volume" -lt 0 ]; then
        new_volume=0
    fi
    pactl set-sink-volume "$SINK" "${new_volume}%"
}

case "$1" in
    --inc) adjust_volume "$INCREMENT" ;;
    --dec) adjust_volume -"$INCREMENT" ;;
    --toggle) pactl set-sink-mute "$SINK" "$( [ "$(current_mute)" = "yes" ] && echo 0 || echo 1 )" ;;
    *) exit 1 ;;
esac
