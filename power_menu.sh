#!/bin/bash

options="Bloquear Pantalla\nApagar\nReiniciar\nCerrar Sesión\nCancelar"

selected=$(echo -e "$options" | wofi -dmenu -p "Acciones")

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
