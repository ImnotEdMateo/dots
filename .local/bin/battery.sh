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

# Asignar un símbolo según el estado de carga y el nivel de la batería
if [ "$AC_STATUS" -eq 1 ]; then
    ICON="^c#689d6a^󰂄"  # Símbolo de carga
else
    if [ "$BAT" -ge 80 ]; then
        ICON="^c#98971A^󰁹"  # Batería llena
    elif [ "$BAT" -ge 70 ]; then
        ICON="^c#98971A^󰂁"  # Batería llena
    elif [ "$BAT" -ge 60 ]; then
      ICON="^c#98971A^󰂀"  # Batería 3/4
    elif [ "$BAT" -ge 50 ]; then
        ICON="^c#98971A^󰁿"  # Batería 1/2
    elif [ "$BAT" -ge 40 ]; then
        ICON="^c#98971A^󰁾"  # Batería 1/4
    elif [ "$BAT" -ge 30 ]; then
        ICON="^c#98971A^󰁽"  # Batería 1/4
    elif [ "$BAT" -ge 20 ]; then
        ICON="^c#D79921^󰁼"  # Batería 1/4
    elif [ "$BAT" -ge 10 ]; then
        ICON="^c#FB4934^󰁻"  # Batería 1/4
    fi
fi


# Mostrar el símbolo y el porcentaje
echo "$ICON ${BAT}%"
