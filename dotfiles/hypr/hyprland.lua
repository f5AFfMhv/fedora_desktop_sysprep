---@module 'hl'

--  _   _                  _                 _
-- | | | |_   _ _ __  _ __| | __ _ _ __   __| |
-- | |_| | | | | '_ \| '__| |/ _` | '_ \ / _` |
-- |  _  | |_| | |_) | |  | | (_| | | | | (_| |
-- |_| |_|\__, | .__/|_|  |_|\__,_|_| |_|\__,_|
--        |___/|_|
--

-- -----------------------------------------------------
-- Keyboard
-- -----------------------------------------------------
local keyboard = require("conf.keyboard")

-- -----------------------------------------------------
-- Autostart
-- -----------------------------------------------------
local autostart = require("conf.autostart")

-- -----------------------------------------------------
-- Load configuration files
-- -----------------------------------------------------
local window = require("conf.window")
local decoration = require("conf.decoration")
local layout = require("conf.layout")
local workspace = require("conf.workspace")
local keybinding = require("conf.keybinding")
local windowrule = require("conf.windowrule")

-- -----------------------------------------------------
-- Animation
-- -----------------------------------------------------
local animation = require("conf.animation")

-- -----------------------------------------------------
-- Custom
-- -----------------------------------------------------
local custom = require("conf.custom")

-- -----------------------------------------------------
-- For Noctalia Color templates
-- -----------------------------------------------------
local noctalia = require("noctalia")

-- -----------------------------------------------------
-- Environment for xdg-desktop-portal-hyprland
-- -----------------------------------------------------
hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)
