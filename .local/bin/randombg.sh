#!/bin/sh

WALLPAPER_DIR="$HOME/stuff/wallpapers"
RANDOM_BG=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

feh --bg-scale "$RANDOM_BG"
