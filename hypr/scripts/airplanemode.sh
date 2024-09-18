#!/bin/bash

if rfkill list wifi | grep -q 'blocked: yes'; then
    rfkill unblock wifi
    notify-send -u low '󰀞  Airplane mode: OFF'
else
    rfkill block wifi
    notify-send -u low '󰀝  Airplane mode: ON'
fi
