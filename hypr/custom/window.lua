-- =================================
--         ▖  ▖▄▖▖ ▖▄ ▄▖▖  ▖
--         ▌▞▖▌▐ ▛▖▌▌▌▌▌▌▞▖▌ 
--         ▛ ▝▌▟▖▌▝▌▙▘▙▌▛ ▝▌
--                            
--   notgian dots: window rules 
--   made by: notgian
--            (syempre sino pa)
-- =================================

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
suppressMaximizeRule:set_enabled(true)

local waylandDrags = hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})
waylandDrags:set_enabled(true)

-- Layer rules also return a handle.
local overlayLayerRule = hl.layer_rule({
    name  = "no-anim-overlay",
    match = { namespace = "^my-overlay$" },
    no_anim = true,
})
overlayLayerRule:set_enabled(false)
