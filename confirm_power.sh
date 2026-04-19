#!/bin/bash

# Argumentos: $1 = Mensaje para el usuario, $2 = Comando a ejecutar

# Mostramos el menú Sí/No con wofi
# -dmenu: modo menú
# -p: prompt personalizado
# -L 2: solo 2 líneas para que sea compacto
# -i: insensible a mayúsculas
selected=$(echo -e "No\nSí" | wofi -dmenu -p "$1" -L 2 -i)

if [[ "$selected" == "Sí" ]]; then
    eval "$2"
fi
