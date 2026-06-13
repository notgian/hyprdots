require('scheme/color')
require('custom/monitors')
require('custom/binds')
require('custom/animations')

---------------------
---- MY PROGRAMS ----
---------------------
require('custom/config')

-- local terminal = 'ghostty'
-- local fileManager = 'nemo'
-- local menu = 'fuzzel'

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/
hl.env("XCURSOR_SIZE", "12")
hl.env("HYPRCURSOR_SIZE", "12")

-------------------
---- AUTOSTART ----
-------------------
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function () 
    hl.exec_cmd(terminal)
    hl.exec_cmd("qs -c noctalia-shell")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hyprpm reload -n")
    -- hl.exec_cmd("nm-applet")
    -- hl.exec_cmd("waybar & hyprpaper & firefox")
end)

-----------------------
----- PERMISSIONS -----
-----------------------
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/


-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border   = {
                colors = {color_primary, color_accent}, 
                angle = 45 
            },
            inactive_border = color_surface,
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 5,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 0.95,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },

    input = {
        kb_layout = "us, kr",
        -- kb_variant =
        -- kb_model =
        -- kb_options =
        -- kb_rules = 

        repeat_delay = 300,
        repeat_rate = 30,
        follow_mouse = 1,

        -- sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
    },
})


--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

require('custom/window')
