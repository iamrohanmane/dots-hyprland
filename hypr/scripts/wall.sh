#!/bin/bash

BASE_DIR="$HOME/Pictures/Wallpapers"
TMP_IMAGE="$BASE_DIR/tmp.jpg"

SELECTED_FOLDER=$(wofi --dmenu --prompt "Select Folder" < <(ls -d "$BASE_DIR"/*/ | xargs -n 1 basename))

if [ -n "$SELECTED_FOLDER" ]; then
    SELECTED_FOLDER_PATH="$BASE_DIR/$SELECTED_FOLDER"
    SELECTED_IMAGE=$(wofi --dmenu --prompt "Select Image" < <(ls "$SELECTED_FOLDER_PATH"))

    if [ -n "$SELECTED_IMAGE" ]; then
        IMAGE_PATH="$SELECTED_FOLDER_PATH/$SELECTED_IMAGE"
        cp "$IMAGE_PATH" "$TMP_IMAGE"
        pkill hyprpaper
        sleep 1
        hyprpaper &
    fi
fi
