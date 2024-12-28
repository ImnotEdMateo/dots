#!/bin/sh

FILE="$HOME/Imágenes/SCREENSHOTS/$(date).png"
grim "$FILE" && wl-copy < "$FILE"
