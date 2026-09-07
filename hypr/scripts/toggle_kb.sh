#!/usr/bin/env bash

# Check if any USB keyboard is plugged in (excluding your built-in one)
if hyprctl devices | grep -E "sino-wealth-fantech-atom-mechanical-keyboard" | grep -q -v "at-translated-set-2-keyboard"; then
    # USB keyboard detected -> Disable internal
    hyprctl eval 'hl.device({ name = "at-translated-set-2-keyboard", enabled = false })'
    /usr/bin/notify-send "Keyboard connected." "Disabled laptop\'s internal keyboard."
    exit 0
else
    # No USB keyboard -> Enable internal
    hyprctl eval 'hl.device({ name = "at-translated-set-2-keyboard", enabled = true })'
    /usr/bin/notify-send "Keyboard disconnected." "Enabled laptop\'s internal keyboard."
    exit 0
fi


/usr/bin/notify-send "Smth is wrong..."
