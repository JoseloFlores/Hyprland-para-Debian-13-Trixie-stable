# Hyprland Dotfiles - Debian 13 Trixie

Este repositorio contiene la configuración optimizada para Hyprland en Debian 13, utilizando **Eww (ElKowars Wacky Widgets)** como barra principal de estado.

## 🚀 Características Principales

-   **Panel Superior (Eww):** Sustituye a Waybar con una lógica personalizada en Rust/Yuck.
    -   **Espacios de Trabajo:** Indicadores dinámicos que escuchan eventos de Hyprland en tiempo real.
    -   **Control de Media:** Módulo MPRIS con soporte para Spotify, Firefox y otros reproductores.
    -   **Quick Settings:** Indicadores de volumen, brillo, red y batería con soporte para scroll y clics.
    -   **Bluetooth:** Módulo inteligente que muestra dispositivos conectados y su nivel de batería.
    -   **Calendario Flotante:** Widget interactivo que se despliega al tocar la hora.
    -   **Power Menu Drawer:** Botón de apagado expansible que revela opciones de bloqueo, reinicio y cierre de sesión al pasar el cursor.
-   **Estética Tokyo Night:** Esquema de colores coherente en todos los componentes.
-   **Gestión de Actualizaciones:** Indicador visual de paquetes pendientes para Debian/APT.

## ⌨️ Atajos de Teclado Relevantes

| Atajo | Acción |
| :--- | :--- |
| `Super + Shift + B` | Reiniciar Eww (Daemon y Barra) |
| `Super + C` | Abrir Navegador |
| `Super + Z` | Abrir Spotify |
| `Super + Q` | Cerrar Ventana |
| `Super + Espacio` | Lanzador Wofi |

## 🛠️ Estructura de Archivos (Eww)

La configuración se encuentra en `~/.config/eww/`:

-   `eww.yuck`: Definición de la estructura de los widgets y ventanas.
-   `eww.scss`: Estilos CSS utilizando variables de Tokyo Night.
-   `scripts/`: Lógica en Bash para la obtención de datos:
    -   `workspaces`: Socket de Hyprland para escritorios.
    -   `volume`: Integración con `wpctl`.
    -   `bluetooth`: Estado vía `bluetoothctl`.
    -   `active_window`: Título de la ventana enfocada.

## 🔄 Reversibilidad (Waybar)

Si deseas volver a usar Waybar, la configuración sigue intacta en `hypr/waybar/`. Solo debes modificar las líneas de `exec-once` y los `binds` en `hyprland.conf` que se encuentran comentadas.
