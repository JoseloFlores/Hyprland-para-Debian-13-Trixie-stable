# Hyprland Dotfiles - Debian 13 (Trixie)

Este repositorio contiene la configuración personalizada para Hyprland, Waybar y herramientas multimedia, enfocada en un flujo de trabajo moderno y eficiente.

## 🚀 Guía de Instalación Rápida

### 1. Instalar Dependencias del Sistema
Copia y pega este comando en tu terminal para instalar todos los programas necesarios que utiliza esta configuración:

```bash
sudo apt update && sudo apt install -y \
    hyprland waybar swaybg wofi gnome-terminal nautilus \
    google-chrome-stable playerctl wireplumber brightnessctl \
    grim slurp swappy jq fonts-font-awesome pavucontrol \
    blueman build-essential libadwaita-1-dev libgtk-4-dev \
    libgdk-pixbuf-2.0-dev pkg-config \
    hyprlock hypridle
```

> **Nota:** Se han añadido `hyprlock` (bloqueador visual) e `hypridle` (gestor de inactividad) para el manejo de energía y seguridad.

### 2. Gestión de Red (Adwaita Network)
Esta configuración utiliza [adw-network](https://github.com/PlayRood32/adw-network) para una gestión de red moderna con estética libadwaita.

#### Instalación:
Requiere **Rust 1.95+**. Si usas la versión de Debian, actualiza con `rustup`.

```bash
# Compilar e instalar
git clone https://github.com/PlayRood32/adw-network.git
cd adw-network
cargo build --release
sudo install -Dm755 target/release/adwaita-network /usr/bin/adwaita-network
sudo install -Dm644 data/com.github.adw-network.desktop /usr/share/applications/com.github.adw-network.desktop

# Instalar Icono
sudo install -Dm644 data/icons/hicolor/scalable/apps/icon.png /usr/share/icons/hicolor/scalable/apps/adwaita-network.png
sudo sed -i 's/Icon=icon/Icon=adwaita-network/' /usr/share/applications/com.github.adw-network.desktop
```

### 3. Clonar Configuración
Clona este repositorio en tu carpeta `.config`:

```bash
mkdir -p ~/.config
git clone https://github.com/TU_USUARIO/TU_REPO.git ~/.config/hypr
```

---

## 🔒 Bloqueo y Ahorro de Energía (Estilo GNOME)

Esta configuración emula el comportamiento de GNOME, donde las pantallas se apagan inmediatamente al bloquear y el equipo se protege al cerrar la tapa.

### ¿Cómo funciona?
1.  **Bloqueo Manual (`SUPER + L`):** Abre un menú (Wofi). Al elegir "Bloquear Pantalla", se activa `hyprlock` y se apagan los monitores instantáneamente para ahorrar energía.
2.  **Cierre de Tapa (Lid Switch):** Al cerrar la tapa de tu notebook, la sesión se bloquea automáticamente y las pantallas se apagan. Al abrirla, los monitores se encienden de nuevo.
3.  **Inactividad Automática:**
    *   **5 minutos:** Se bloquea la pantalla automáticamente.
    *   **5.5 minutos:** Se apagan los monitores (DPMS off).
    *   **30 minutos:** El sistema entra en suspensión (Suspend to RAM).

### Archivos Clave:
*   `hypridle.conf`: Define los tiempos de espera y qué comandos ejecutar (bloqueo, apagado de pantalla, suspensión).
*   `hyprlock.conf`: Personaliza la apariencia de la pantalla de bloqueo (fondo, reloj, campo de contraseña).
*   `power_menu.sh`: Script que integra el bloqueo con el apagado inmediato de monitores.

---

## ⌨️ Atajos de Teclado Multimedia (Personalizados)
Estos atajos son globales y funcionan sin importar el foco de la ventana:

| Combinación | Acción | Herramienta |
| ----------- | ------ | ----------- |
| `Super + L` | Menú de Energía / Bloqueo | `power_menu.sh` |
| `Ctrl + Alt + M` | Subir Volumen | `wpctl` |
| `Ctrl + Alt + N` | Bajar Volumen | `wpctl` |
| `Ctrl + Alt + /` | Play / Pause | `playerctl` |
| `Ctrl + Alt + .` | Siguiente Pista | `playerctl` |
| `Ctrl + Alt + ,` | Pista Anterior | `playerctl` |

## 📸 Capturas de Pantalla
*   `Print`: Seleccionar área (con edición en `swappy`).
*   `Alt + Print`: Capturar ventana activa.
*   `Super + Print`: Capturar monitor actual.

---

## 🛠️ Notas Adicionales
*   **Identificar tu Tapa (Lid Switch):** Si el bloqueo al cerrar la tapa no funciona, verifica el nombre de tu dispositivo con `hyprctl devices`. Busca en la sección "Switches". Si se llama distinto a "Lid Switch", actualiza la línea correspondiente en `hyprland.conf`.
*   **Actualizaciones:** El icono 󰏖 en la barra (Waybar) indica actualizaciones de Debian pendientes.
*   **Spotify:** Los controles multimedia requieren que Spotify esté abierto (`Super + Z`).
