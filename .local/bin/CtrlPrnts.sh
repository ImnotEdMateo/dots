#!/bin/sh

FILE="$HOME/Imágenes/SCREENSHOTS/$(date).png"
slurp | grim -g - "$FILE" && wl-copy < "$FILE"
beep
