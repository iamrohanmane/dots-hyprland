#!/bin/bash

# Created by Varrxy

: '
░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
 ░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
 ░▒▓█▓▒▒▓█▓▒░░▒▓████████▓▒░▒▓███████▓▒░░▒▓███████▓▒░ ░▒▓██████▓▒░ ░▒▓██████▓▒░
  ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░
  ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░
   ░▒▓██▓▒░  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░
'

BASE_DIR="$HOME/Pictures/Wallpapers"

SELECTED_FOLDER=$(wofi --dmenu --prompt "Select Folder" < <(ls -d "$BASE_DIR"/*/ | xargs -n 1 basename))

if [ -n "$SELECTED_FOLDER" ]; then
    SELECTED_FOLDER_PATH="$BASE_DIR/$SELECTED_FOLDER"
    SELECTED_IMAGE=$(wofi --dmenu --prompt "Select Image" < <(ls "$SELECTED_FOLDER_PATH" | sed 's/\.jpg$//'))

    if [ -n "$SELECTED_IMAGE" ]; then
        IMAGE_PATH="$SELECTED_FOLDER_PATH/$SELECTED_IMAGE.jpg"
        
        swww img "$IMAGE_PATH" --transition-type random --transition-step 20 --transition-fps 30
    fi
fi
