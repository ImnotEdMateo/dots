#!/bin/sh

WALLPAPER_DIR="$HOME/stuff/wallpapers"
RANDOM_BG=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

feh --bg-fill "$RANDOM_BG"
