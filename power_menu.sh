#!/bin/bash
# Dentro de power_menu.sh
options="Bloquear Pantalla\nApagar\nReiniciar\nCerrar Sesión\nCancelar"

selected=$(echo -e "$options" | wofi -dmenu --style ~/.config/wofi/style3.css -p "Acciones" --width 400 --height 250)

case "$selected" in
    "Bloquear Pantalla")
	loginctl lock-session
	sleep 4 && hyprctl dispatch dpms off
	;;
    "Apagar")
        systemctl poweroff
        ;;
    "Reiniciar")
        systemctl reboot
        ;;
    "Cerrar Sesión")
        hyprctl dispatch exit
        ;;
    "Cancelar")
        exit 0
        ;;
esac
