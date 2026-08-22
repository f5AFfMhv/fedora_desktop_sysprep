-- -----------------------------------------------------
-- Window rules
-- -----------------------------------------------------

hl.window_rule({
    match = { title = "^(Microsoft-edge)$" },
    tile = true,
})

hl.window_rule({
    match = { title = "^(Brave-browser)$" },
    tile = true,
})

hl.window_rule({
    match = { title = "^(Chromium)$" },
    tile = true,
})

hl.window_rule({
    match = { title = "^(pavucontrol)$" },
    float = true,
})

hl.window_rule({
    match = { title = "^(blueman-manager)$" },
    float = true,
})

hl.window_rule({
    match = { title = "^(nm-connection-editor)$" },
    float = true,
})

hl.window_rule({
    match = { title = "^(qalculate-gtk)$" },
    float = true,
})


-- Gnome Calendar
hl.window_rule({
    match = { title = "^(Calendar)$" },
    float = true,
    move = { 1220, 295 },
    size = { 100, 100 },
    pin = true,
    no_blur = true,
})

-- Gnome Calculator
hl.window_rule({
    match = { title = "^(Calculator)$" },
    float = true,
    move = { 2315, 1070 },
    size = { 100, 100 },
    pin = true,
})


-- Browser Picture in Picture
hl.window_rule({
    match = { title = "^Picture-in-Picture$", },
    float = true,
    size = { 640, 360 },
    pin = true,
    move = "74% 74%",
})


-- Pavucontrol floating
hl.window_rule({
    match = {
        class = "(.*org.pulseaudio.pavucontrol.*)",
    },
    float = true,
    size = { 700, 600 },
    center = true,
    pin = true,
})


-- Blueman Manager
hl.window_rule({
    match = {
        class = "(blueman-manager)",
    },
    float = true,
    size = { 800, 600 },
    center = true,
})


-- nwg-look
hl.window_rule({
    match = {
        class = "(nwg-look)",
    },
    float = true,
    size = { 700, 600 },
    move = "10% 20%",
    pin = true,
})


-- Hyprland Share Picker
hl.window_rule({
    match = {
        class = "(hyprland-share-picker)",
    },
    float = true,
    pin = true,
    size = { 600, 400 },
})

-- Note: the original rule has:
-- match:title match:class (hyprland-share-picker)
-- which looks like a typo, so only the class matcher is retained above.


-- General floating
hl.window_rule({
    match = {
        class = "(dotfiles-floating)",
    },
    float = true,
    size = { 1500, 850 },
    center = true,
})


-- Chrome GPT
hl.window_rule({
    match = {
        class = "(chrome-chatgpt.com__-Default)",
    },
    float = false,
    size = { 1250, 700 },
    center = false,
    pin = false,
})


-- Float and center file pickers
hl.window_rule({
    match = {
        class = "xdg-desktop-portal-gtk",
        title = "^(Open.*Files?|Save.*Files?|All Files|Save)",
    },
    float = true,
    center = true,
})


-- Idle inhibit
hl.window_rule({
    match = {
        class = "([window])",
    },
    idle_inhibit = "fullscreen",
})


-- XWayland related rules
-- Prevent large borders when moving objects in Resolve.
hl.window_rule({
    match = {
        class = "^(\\bresolve\\b)$",
        xwayland = true,
    },
    no_blur = true,
})