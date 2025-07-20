#!/bin/bash

# Obtener el porcentaje de la batería
if [ -f /sys/class/power_supply/BAT0/capacity ]; then
   BAT=$(cat /sys/class/power_supply/BAT0/capacity)
else
    echo "Batería: no disponible"
    exit 1
fi

# Obtener el estado de carga
if [ -f /sys/class/power_supply/AC/online ]; then
    AC_STATUS=$(cat /sys/class/power_supply/AC/online)
else
    echo "Estado de carga: no disponible"
    exit 1
fi

# Condicional gulo para definir cómo se vel pto icono
if [ "$AC_STATUS" -eq 1 ]; then
    ICON="^c#689d6a^󰂄"  # Si carga
else # Dependiendo del porcentaje
    if [ "$BAT" -ge 100 ]; then
        ICON="^c#98971a^󰁹"
    elif [ "$BAT" -ge 90 ]; then
        ICON="^c#98971a^󰂂"
    elif [ "$BAT" -ge 80 ]; then
        ICON="^c#98971a^󰂁"
    elif [ "$BAT" -ge 70 ]; then
        ICON="^c#b8bb26^󰂀"
    elif [ "$BAT" -ge 60 ]; then
        ICON="^c#d79921^󰁿"
    elif [ "$BAT" -ge 50 ]; then
        ICON="^c#d79921^󰁾"
    elif [ "$BAT" -ge 40 ]; then
        ICON="^c#fabd2f^󰁽"
    elif [ "$BAT" -ge 30 ]; then
        ICON="^c#fabd2f^󰁼"
    elif [ "$BAT" -ge 20 ]; then
        ICON="^c#d65d0e^󰁻"
    elif [ "$BAT" -ge 10 ]; then
        ICON="^c#cc241d^󰁺"
    else
        ICON="^c#fb4934^󰂃"
    fi
fi

# Mostrar el símbolo y el porcentaje
echo "$ICON ${BAT}%"
