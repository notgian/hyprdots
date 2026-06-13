#!/usr/bin/env bash

# Check if any USB keyboard is plugged in (excluding your built-in one)
if hyprctl devices | grep -E "sino-wealth-fantech-atom-mechanical-keyboard" | grep -q -v "at-translated-set-2-keyboard"; then
    # USB keyboard detected -> Disable internal
    hyprctl eval 'hl.device({ name = "at-translated-set-2-keyboard", enabled = false })'
else
    # No USB keyboard -> Enable internal
    hyprctl eval 'hl.device({ name = "at-translated-set-2-keyboard", enabled = true })'
fi
