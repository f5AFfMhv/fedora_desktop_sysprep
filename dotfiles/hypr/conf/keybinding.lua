---@module 'hl'

-- -----------------------------------------------------
-- Key bindings
-- -----------------------------------------------------

-- SUPER KEY
local mainMod = "SUPER"

-- Terminal
hl.bind(mainMod .. " + " .. "RETURN", hl.dsp.exec_cmd("alacritty"))

-- Browser
hl.bind(mainMod .. " + " .. "B", hl.dsp.exec_cmd("flatpak run app.zen_browser.zen"))

-- File manager
hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("nautilus"))

-- Calculator
hl.bind(mainMod .. " + " .. "C", hl.dsp.exec_cmd("gnome-calculator"))

-- Kill active window
hl.bind(mainMod .. " + " .. "Q", hl.dsp.window.close())

-- Set active window to fullscreen
hl.bind(mainMod .. " + " .. "F", hl.dsp.window.fullscreen())

-- Toggle active windows into floating mode
hl.bind(mainMod .. " + " .. "T", hl.dsp.window.float())

-- Toggle split
hl.bind(mainMod .. " + " .. "J", hl.dsp.layout("togglesplit"))

-- Move focus left
hl.bind(mainMod .. " + " .. "left", hl.dsp.focus({ direction = "left" }))

-- Move focus right
hl.bind(mainMod .. " + " .. "right", hl.dsp.focus({ direction = "right" }))

-- Move focus up
hl.bind(mainMod .. " + " .. "up", hl.dsp.focus({ direction = "up" }))

-- Move focus down
hl.bind(mainMod .. " + " .. "down", hl.dsp.focus({ direction = "down" }))

-- Move window with the mouse
hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })

-- Resize window with the mouse
hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })


-- Reduce window height with keyboard
-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + right", hl.dsp.resizeactive("100 0"))

-- Increase window width with keyboard

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + left", hl.dsp.resizeactive("-100 0"))

-- Reduce window width with keyboard

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + down", hl.dsp.resizeactive("0 100"))

-- Increase window height with keyboard

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + up", hl.dsp.resizeactive("0 -100"))


-- Toggle window group
hl.bind(mainMod .. " + " .. "G", hl.dsp.group.toggle())

-- Swap tiled window left
hl.bind(mainMod .. " + " .. "ALT" .. " + " .. "left", hl.dsp.window.swap({ direction = "left" }))

-- Swap tiled window right
hl.bind(mainMod .. " + " .. "ALT" .. " + " .. "right", hl.dsp.window.swap({ direction = "right" }))

-- Swap tiled window up
hl.bind(mainMod .. " + " .. "ALT" .. " + " .. "up", hl.dsp.window.swap({ direction = "up" }))

-- Swap tiled window down
hl.bind(mainMod .. " + " .. "ALT" .. " + " .. "down", hl.dsp.window.swap({ direction = "down" }))


-- Cycle between windows
hl.bind("ALT" .. " + " .. "Tab", hl.dsp.window.cycle_next())

-- Actions

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "R", hl.dsp.exec_cmd("hyprctl reload"))

-- Reload Hyprland configuration

-- Noctalia

hl.bind(mainMod .. " + " .. "D", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))

-- Aplication launcher

hl.bind(mainMod .. " + " .. "V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))

-- Open clipboard manager

hl.bind(mainMod .. " + " .. "SPACE", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center"))

-- Open control center

hl.bind("PRINT", hl.dsp.exec_cmd("noctalia msg screenshot-region"))

-- Screenshot

-- Sidepad

-- hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "right", hl.dsp.exec_cmd("~/.config/ml4w/scripts/sidepad.sh"))

-- -- Open Sidepad

-- hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "left", hl.dsp.exec_cmd("~/.config/ml4w/scripts/sidepad.sh --hide"))

-- -- Close Sidepad

hl.bind(mainMod .. " + " .. "S", hl.dsp.exec_cmd("~/.config/sidepad/sidepad --init"))

-- -- Init Sidepad

-- hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "S", hl.dsp.exec_cmd("~/.config/ml4w/scripts/sidepad.sh --select"))

-- Scratchpad

hl.bind(mainMod .. " + " .. "ALT" .. " + " .. 1, hl.dsp.workspace.toggle_special("thunderbird"))

hl.bind(mainMod .. " + " .. "ALT" .. " + " .. 2, hl.dsp.workspace.toggle_special("missioncenter"))

hl.bind(mainMod .. " + " .. "ALT" .. " + " .. 3, hl.dsp.workspace.toggle_special("elisa"))

hl.bind(mainMod .. " + " .. "ALT" .. " + " .. 4, hl.dsp.workspace.toggle_special("memos"))

hl.bind(mainMod .. " + " .. "ALT" .. " + " .. 5, hl.dsp.workspace.toggle_special("terminal1"))

hl.bind(mainMod .. " + " .. "ALT" .. " + " .. 6, hl.dsp.workspace.toggle_special("terminal2"))

hl.bind(mainMod .. " + " .. "ALT" .. " + " .. 7, hl.dsp.workspace.toggle_special("terminal3"))

hl.bind(mainMod .. " + " .. "ALT" .. " + " .. 8, hl.dsp.workspace.toggle_special("updates"))

-- Workspaces

hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))

-- Open workspace 1

hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))

-- Open workspace 2

hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))

-- Open workspace 3

hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))

-- Open workspace 4

hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))

-- Open workspace 5

hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))

-- Open workspace 6

hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))

-- Open workspace 7

hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))

-- Open workspace 8

hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))

-- Open workspace 9

hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))

-- Open workspace 10

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }))

-- Move active window to workspace 1

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))

-- Move active window to workspace 2

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))

-- Move active window to workspace 3

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))

-- Move active window to workspace 4

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))

-- Move active window to workspace 5

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }))

-- Move active window to workspace 6

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }))

-- Move active window to workspace 7

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }))

-- Move active window to workspace 8

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }))

-- Move active window to workspace 9

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 }))

-- Move active window to workspace 10

hl.bind(mainMod .. " + " .. "Tab", hl.dsp.focus({ workspace = "m+1" }))

-- Open next workspace

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "Tab", hl.dsp.focus({ workspace = "m-1" }))

-- Open previous workspace

hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))

-- Open next workspace

hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Open previous workspace

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "down", hl.dsp.focus({ workspace = "empty" }))

-- Open the next empty workspace

-- Fn keys

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -q s +10%"))

-- Increase brightness by 10%

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -q s 10%-"))

-- Reduce brightness by 10%

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+"), { locked = true })

-- Increase volume by 5% (max 100% limit also added hold to raise volume)

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"), { locked = true })

-- Reduce volume by 5% (min 0% limit also added hold to lower volume)

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))

-- Toggle mute

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))

-- Audio play pause

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl pause"))

-- Audio pause

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))

-- Audio next

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))

-- Audio previous

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("pactl set-source-mute @DEFAULT_SOURCE@ toggle"))

-- Toggle microphone

hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"))

-- Open calculator

hl.bind("code:238", hl.dsp.exec_cmd("brightnessctl -d smc::kbd_backlight s +10"))

hl.bind("code:237", hl.dsp.exec_cmd("brightnessctl -d smc::kbd_backlight s 10-"))
