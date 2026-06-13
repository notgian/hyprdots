-- ==================================
--           ▄ ▄▖▖▖▄▖▄▖▄▖▄▖
--           ▌▌▙▖▌▌▐ ▌ ▙▖▚ 
--           ▙▘▙▖▚▘▟▖▙▖▙▖▄▌
--
--   notgian dots: device rules and
--                 configs
--   made by: notgian
--            (syempre sino pa)
-- ==================================


-- For disabling the internal laptop keyboard when my
-- USB keyboard is plugged in.

-- hl.device({
--     name = 'at-translated-set-2-keyboard',
--     enabled = false
-- })

hl.on("config.reloaded", function ()
    hl.exec_cmd('$HOME/.config/hypr/scripts/toggle_kb.sh')
end)
