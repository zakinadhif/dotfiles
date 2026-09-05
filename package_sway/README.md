# Sway keymap

This is the keymap for the Sway configuration in `.config/sway/config`.

On the MacBook keyboard, **Super** is the Command (`⌘`) key. Key combinations use `+` to mean “hold these keys together.”

## Applications and windows

| Keys | Action |
| --- | --- |
| `Super+Enter` | Open Foot terminal |
| `Super+D` | Open Fuzzel application launcher |
| `Super+Shift+Q` | Close the focused window |
| `Super+F` | Toggle fullscreen |
| `Super+Shift+Space` | Toggle floating mode |
| `Super+Space` | Switch focus between tiled and floating windows |
| `Super+L` | Lock the session |
| `Super+B` | Toggle Waybar visibility |

## Focus and movement

| Keys | Action |
| --- | --- |
| `Super+←/↓/↑/→` | Focus the window in that direction |
| `Super+Shift+←/↓/↑/→` | Move the focused window in that direction |
| `Super+A` | Focus the parent container |
| `Super+Z` | Focus the child container |
| `Super+Shift+-` | Move the focused window to the scratchpad |
| `Super+-` | Show or cycle scratchpad windows |

## Layout

| Keys | Action |
| --- | --- |
| `Super+H` | Make the next split horizontal |
| `Super+V` | Make the next split vertical |
| `Super+S` | Use stacking layout |
| `Super+W` | Use tabbed layout |
| `Super+E` | Toggle horizontal/vertical split layout |
| `Super+Shift+B` | Cycle the focused window's border style |
| `Super+T` | Use a normal border |
| `Super+Y` | Use a one-pixel border |
| `Super+U` | Hide the border |

## Workspaces

| Keys | Action |
| --- | --- |
| `Super+1` … `Super+9` | Switch to workspace 1–9 |
| `Super+0` | Switch to workspace 10 |
| `Super+Q` | Switch to workspace 4 |
| `Super+Control+→/←` | Switch to the next/previous workspace |
| `Super+Shift+1` … `Super+Shift+9` | Move the focused window to workspace 1–9 |
| `Super+Shift+0` | Move the focused window to workspace 10 |
| `Super+Shift+Control+→/←` | Move the window to the next/previous workspace and follow it |

## Resize mode

Press `Super+R` to enter resize mode.

| Keys in resize mode | Action |
| --- | --- |
| `←` | Shrink width |
| `→` | Grow width |
| `↑` | Shrink height |
| `↓` | Grow height |
| `Enter`, `Escape`, or `Super+R` | Leave resize mode |

Each arrow-key press changes the size by 10 pixels.

## Screenshots on the MacBook keyboard

| Keys | Action |
| --- | --- |
| `Super+P` | Save the entire output |
| `Super+Shift+P` | Save the focused window |
| `Super+Control+P` | Select an area and save it |
| `Super+Control+Shift+P` | Select an area and copy it to the clipboard |

Screenshots are saved in the XDG Pictures directory. The equivalent `Print`, `Shift+Print`, `Control+Print`, and `Control+Shift+Print` bindings remain available for external keyboards.

## Media and hardware keys

| Key | Action |
| --- | --- |
| Volume up/down | Change output volume by 5% |
| Mute | Toggle output mute |
| Microphone mute | Toggle microphone mute |
| Brightness up/down | Change display brightness by 5% |
| Play/pause | Toggle media playback |
| Stop | Stop playback |
| Previous/next | Change media track |

These bindings are available while the screen is locked. Depending on the MacBook function-key setting, hold `Fn` to produce the media or brightness key.

## Session and configuration

| Keys | Action |
| --- | --- |
| `Super+Escape` | Open the power menu |
| `Super+Shift+E` | Open the power menu |
| `Super+Shift+C` | Reload the Sway configuration |
| `Super+Shift+R` | Restart Sway in place |

The power menu provides lock, suspend, hibernate, log out, reboot, and power-off actions.
