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
-   **🔘 Menú de Energía en Waybar:** Drawer integrado con opciones de Bloqueo, Reinicio y Apagado.
-   **📸 Capturas Inteligentes:** Integración con `grim`, `slurp` y `swappy` para edición inmediata.
-   **🎨 Estética Coherente:** Waybar y Wofi con estilos personalizados.

---

## ⌨️ Atajos de Teclado Útiles

| Combinación | Acción |
| ----------- | ------ |
| `Super + Return` | Terminal (`gnome-terminal`) |
| `Super + D` | Lanzador de aplicaciones (`wofi`) |
| `Super + L` | Menú de Bloqueo/Energía |
| `Super + Q` | Cerrar ventana activa |
| `Super + E` | Explorador de archivos (`nautilus`) |
| `Print` | Capturar área seleccionada |

---

## 🛠️ Requisitos Adicionales

-   **Navegador:** Esta configuración busca `google-chrome`. Puedes cambiarlo en `hyprland.conf` modificando la variable `$browser`.
-   **Fuentes:** Se utiliza **Font Awesome** para los iconos de Waybar.
-   **Red:** Para una integración visual completa, se recomienda [adw-network](https://github.com/PlayRood32/adw-network).

---

## 📂 Estructura del Proyecto

-   `hyprland.conf`: Configuración principal de Hyprland.
-   `hypridle.conf` & `hyprlock.conf`: Gestión de inactividad y bloqueo.
-   `waybar/`: Configuración y estilos de la barra superior.
-   `power_menu.sh` & `confirm_power.sh`: Scripts auxiliares para el menú de energía.
-   `wall2.jpg`: Fondo de pantalla por defecto.
