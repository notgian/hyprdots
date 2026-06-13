-- ===================================
--         ▖  ▖▄▖▖ ▖▄▖▄▖▄▖▄▖▄▖
--         ▛▖▞▌▌▌▛▖▌▐ ▐ ▌▌▙▘▚ 
--         ▌▝ ▌▙▌▌▝▌▟▖▐ ▙▌▌▌▄▌
--
--   notgian dots: monitor configs
--   made by: notgian
--            (syempre sino pa)
-- ===================================
--
--   hyprland wiki:
--   https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@60",
    position = "0x0",
    scale    = "1",
})

-- HDMI secondary monitor above
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@60",
    position = "0x-1080",
    scale    = "1",
})

-- HDMI secondary monitor left
-- hl.monitor({
--     output   = "HDMI-A-1",
--     mode     = "1920x1080@60",
--     position = "-1920x0",
--     scale    = "1",
-- })
