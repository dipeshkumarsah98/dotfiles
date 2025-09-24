# Tmux Developer Configuration

This is a fully customized tmux configuration for developers, optimized for macOS and Windows environments. It enhances workflow with mouse support, session/window management, pane handling, and visual indicators.

## Features

- **Mouse support**: Click, select, and resize panes and windows.
- **Status bar enhancements**: Shows session, window, and pane indexes; indicates when prefix key is active (`PREFIX ⌨`).
- **Preserve working directory**: New windows and panes start in the current pane’s directory.
- **Session management**: Create, switch, rename, and kill sessions interactively or via prompts.
- **Window management**: Create, switch, rename, and kill windows.
- **Pane management**: Horizontal and vertical splits with preserved working directory.
- **Config reload shortcut**: Reload your tmux config without restarting tmux.

---

## Installation

1. Copy the provided configuration into `~/.tmux.conf`.
2. Reload tmux or start a new tmux session:

```bash
tmux source-file ~/.tmux.conf   # Reload current session
tmux                           # Start new tmux session
```

---

## Prefix Key

Default prefix key: **Ctrl+b** (`C-b`)

All shortcuts are triggered after pressing the prefix.

---

## Pane Shortcuts

| Shortcut   | Action                                                |
| ---------- | ----------------------------------------------------- |
| `Ctrl+b "` | Split pane horizontally (preserves current directory) |
| `Ctrl+b %` | Split pane vertically (preserves current directory)   |
| `Ctrl+b c` | Create new window (current directory)                 |

---

## Session Shortcuts

| Shortcut   | Action                                   |
| ---------- | ---------------------------------------- |
| `Ctrl+b s` | List sessions interactively              |
| `Ctrl+b )` | Next session                             |
| `Ctrl+b (` | Previous session                         |
| `Ctrl+b A` | Prompt for session name and switch to it |
| `Ctrl+b R` | Rename current session                   |
| `Ctrl+b N` | Create new session (prompt for name)     |
| `Ctrl+b X` | Kill current session (confirmation)      |
| `Ctrl+b S` | Reload tmux configuration                |

---

## Window Shortcuts

| Shortcut   | Action                                                           |
| ---------- | ---------------------------------------------------------------- |
| `Ctrl+b C` | Create new window (prompt for name, preserves current directory) |
| `Ctrl+b w` | Kill a target window interactively                               |
| `Ctrl+b K` | Kill current window                                              |
| `Ctrl+b l` | Switch to next window                                            |
| `Ctrl+b j` | Switch to previous window                                        |

---

## Status Bar

- Left side displays:

  ```
  [PREFIX ⌨ if active] 💻 session_name window_index pane_index
  ```

- Status updates automatically when prefix is pressed to indicate tmux is waiting for the next key.

---

## Notes

- **MacOS Terminal / iTerm2**: `/bin/zsh` is used as the default shell.
- **Windows (WSL / Git Bash / PowerShell with tmux)**: Ensure tmux is installed and `$SHELL` points to a supported shell. Some terminal overrides may not be required.
- Reload configuration whenever you make changes using `Ctrl+b S`.
