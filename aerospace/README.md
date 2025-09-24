# AeroSpace macOS Configuration for Developers

This configuration is designed for developers who want a **tiling window manager** experience on macOS using AeroSpace. It enables workspace management, window layouts, keyboard navigation, and automatic window placement for productivity.

---

## Features

- **Startup commands**:

  - Sets borders with custom colors (`active_color`, `inactive_color`)
  - Switches to workspace `B` and `1` on startup
  - Moves workspace to next monitor

- **Window and workspace layouts**:

  - Default root container layout: `tiles`
  - Default orientation: `auto`
  - Accordion padding: 30
  - Supports normalization for nested containers

- **Gaps configuration**:

  - Inner gaps (between windows): 10px horizontal & vertical
  - Outer gaps (edges of monitors): 10px on all sides

- **Mouse behavior**: Automatically moves cursor to focused monitor center

- **Keyboard mapping**: QWERTY preset with extensive bindings for workspaces, windows, layouts, and resizing

---

## Key Bindings

### Workspace Navigation

| Shortcut                       | Action                                            |
| ------------------------------ | ------------------------------------------------- |
| `Alt-1…9, Alt-a…z`             | Switch to workspace                               |
| `Alt-Shift-1…9, Alt-Shift-a…z` | Move window to target workspace and switch to it  |
| `Alt-tab`                      | Switch back and forth between last two workspaces |
| `Alt-Shift-M`                  | Move workspace to next monitor                    |

---

### Window & Node Management

| Shortcut               | Action                                     |
| ---------------------- | ------------------------------------------ |
| `Alt-slash`            | Layout: tiles → horizontal → vertical      |
| `Alt-comma`            | Layout: accordion → horizontal → vertical  |
| `Alt-w`                | Layout: horizontal accordion               |
| `Alt-e`                | Layout: tiles horizontal vertical          |
| `Alt-Shift-Space`      | Toggle between floating and tiling layouts |
| `Alt-Enter`            | Open Alacritty terminal                    |
| `Alt-F`                | Fullscreen current window                  |
| `Alt-Shift-Q`          | Close focused window                       |
| `Alt-R`                | Enter resize mode                          |
| `Mode Resize: h/j/k/l` | Resize focused window (width/height ±50)   |

---

### Focus & Move Windows

| Shortcut                           | Action                                           |
| ---------------------------------- | ------------------------------------------------ |
| `Alt-j/k/l/;`                      | Focus left/down/up/right (wrap-around workspace) |
| `Alt-Shift-h/j/k/l`                | Move focused window left/down/up/right           |
| `Alt-Shift-h/j/k/l` (service mode) | Join windows with direction                      |

---

### Volume Controls

| Shortcut     | Action      |
| ------------ | ----------- |
| `Down`       | Volume down |
| `Up`         | Volume up   |
| `Shift-Down` | Mute volume |

---

### Automatic Window Placement

- Chrome → Workspace 2
- DataGrip → Workspace 3
- Terminal / Alacritty → Workspace 1
- Slack → Workspace S

---

### Startup Behavior

- `start-at-login = true` → AeroSpace launches on macOS login
- `after-login-command` → currently empty
- `after-startup-command` → applies borders, switches workspaces, moves workspaces to monitors

---

### Notes

- Supports multiple monitors and automatic focus handling
- Normalization options improve nested container layout
- Accordion padding can be adjusted in `[accordion-padding]`
- All keybindings are defined under `[mode.main.binding]` and `[mode.service.binding]`
- Use workspace names and shortcuts consistently to organize windows across monitors

---

This configuration provides a **keyboard-driven, multi-monitor, tiling workspace environment** optimized for macOS developers.
