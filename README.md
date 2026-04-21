# 🌌 Modern-Hypr-Setup

Este repositorio contiene una configuración optimizada para **Hyprland**, enfocada en la eficiencia, estética moderna y gestión inteligente de energía para múltiples distribuciones.

## 🚀 Instalación Rápida (Un solo comando)

Copia y pega este comando en tu terminal para instalar dependencias y configurar todo automáticamente:

```bash
git clone https://github.com/JoseloFlores/Modern-Hypr-Setup.git && cd Modern-Hypr-Setup && chmod +x install.sh && ./install.sh
```

> **Nota:** El script `install.sh` detecta automáticamente tu distribución (**Arch, Debian/Ubuntu, Fedora**) e instala los paquetes necesarios.

---

## ✨ Características Principales

-   **⚡ Gestión de Energía (Estilo GNOME):** 
    -   Bloqueo automático tras 5 min de inactividad.
    -   Apagado inmediato de monitores al bloquear (`Super + L`) o cerrar la tapa.
    -   Suspensión automática tras 30 min.
-   **🔘 Menú de Energía y Quick Settings:** Drawer integrado y grupo de ajustes rápidos (Volumen, Red, Bluetooth, Batería) con estilo moderno.
-   **🎵 Control de Medios:** Integración con MPRIS para controlar música (Spotify, Firefox, etc.) directamente desde la barra.
-   **📸 Capturas Inteligentes:** Integración con `grim`, `slurp` y `swappy` para edición inmediata.
-   **🎨 Estética Coherente:** Waybar rediseñado con estilo tipo "píldora" y Wofi con estilos personalizados.

---

## ⌨️ Atajos de Teclado Útiles

| Combinación | Acción |
| ----------- | ------ |
| `Super + Return` | Terminal (`foot`) |
| `Super + D` | Lanzador de aplicaciones (`wofi`) |
| `Super + L` | Bloquear sesión (`hyprlock`) |
| `Super + Q` | Cerrar ventana activa |
| `Super + E` | Explorador de archivos (`nautilus`) |
| `Super + Shift + B` | Recargar Waybar (Configuración y Estilo) |
| `Print` | Capturar área seleccionada |
| `XF86Audio...` | Control de Volumen (Subir/Bajar/Mutear) |
| `XF86MonBrightness...` | Control de Brillo (Subir/Bajar) |

---

## 🛠️ Requisitos Adicionales

-   **Terminal:** Se utiliza `foot` por su ligereza y soporte Wayland nativo.
-   **Navegador:** Esta configuración busca `google-chrome`. Puedes cambiarlo en `hyprland.conf` modificando la variable `$browser`.
-   **Fuentes:** Se recomiendan **Nerd Fonts** (ej. `Symbols Nerd Font`, `MesloLGM Nerd Font`) para la correcta visualización de iconos.
-   **Audio:** Utiliza `wpctl` (Pipewire/Wireplumber) para el control de volumen.
-   **Brillo:** Requiere `brightnessctl` para los atajos de teclado de brillo.

---

## 📂 Estructura del Proyecto

-   `hyprland.conf`: Configuración principal de Hyprland.
-   `hypridle.conf` & `hyprlock.conf`: Gestión de inactividad y bloqueo.
-   `waybar/`: Configuración y estilos de la barra superior.
-   `power_menu.sh` & `confirm_power.sh`: Scripts auxiliares para el menú de energía.
-   `wall2.jpg`: Fondo de pantalla por defecto.
