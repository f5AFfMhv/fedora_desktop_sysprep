---@module 'hl'
--    ___       __           __           __
--   / _ |__ __/ /____  ___ / /____ _____/ /_
--  / __ / // / __/ _ \(_-</ __/ _ `/ __/ __/
-- /_/ |_\_,_/\__/\___/___/\__/\_,_/_/  \__/
--

-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
    hl.exec_cmd("flatpak run com.nextcloud.desktopclient.nextcloud --background")
    hl.exec_cmd("insync start")
    hl.exec_cmd("flatpak run me.kozec.syncthingtk --minimized")
    hl.exec_cmd("flatpak run org.mozilla.thunderbird_esr -mail", {
        workspace = "special:thunderbird silent"
    })
    hl.exec_cmd("flatpak run app.zen_browser.zen --private-window", {
        workspace = "special:zen silent"
    })
end)
