-- ============================================================
-- Thunderbird
-- ============================================================
hl.workspace_rule({
    workspace = "special:thunderbird",
    on_created_empty = "flatpak run org.mozilla.thunderbird_esr -mail",
})

hl.window_rule({
    match = {
        class = "org.mozilla.thunderbird_esr",
        workspace = "special:thunderbird",
    },
})

hl.window_rule({
    match = {
        class = "org.mozilla.thunderbird_esr",
    },
    float = true,
    size = { 1500, 850 },
})

-- ============================================================
-- Mission Center
-- ============================================================
hl.workspace_rule({
    workspace = "special:missioncenter",
    on_created_empty = "flatpak run io.missioncenter.MissionCenter",
})

hl.window_rule({
    match = {
        class = "io.missioncenter.MissionCenter",
        workspace = "special:missioncenter",
    },
})

hl.window_rule({
    match = {
        class = "io.missioncenter.MissionCenter",
    },
    float = true,
    size = { 1500, 850 },
})

-- ============================================================
-- Elisa - music player
-- ============================================================
hl.workspace_rule({
    workspace = "special:elisa",
    on_created_empty = "flatpak run org.kde.elisa",
})

hl.window_rule({
    match = {
        class = "org.kde.elisa",
        workspace = "special:elisa",
    },
})

hl.window_rule({
    match = {
        class = "org.kde.elisa",
    },
    float = true,
    size = { 1500, 850 },
})

-- ============================================================
-- Memos
-- ============================================================
hl.workspace_rule({
    workspace = "special:memos",
    on_created_empty = "flatpak run io.github.ungoogled_software.ungoogled_chromium --app=https://memos.home.lab",
})

hl.window_rule({
    match = {
        class = "chrome-memos.home.lab__-Default",
        workspace = "special:memos",
    },
})

hl.window_rule({
    match = {
        class = "chrome-memos.home.lab__-Default",
    },
    float = true,
    size = { 1500, 850 },
})


-- ============================================================
-- Terminal 1
-- ============================================================
hl.workspace_rule({
    workspace = "special:terminal1",
    on_created_empty = "alacritty --class dotfiles-floating",
})



-- ============================================================
-- Terminal 2
-- ============================================================

hl.workspace_rule({
    workspace = "special:terminal2",
    on_created_empty = "alacritty --class dotfiles-floating",
})


-- ============================================================
-- Terminal 3
-- ============================================================

hl.workspace_rule({
    workspace = "special:terminal3",
    on_created_empty = "alacritty --class dotfiles-floating",
})


-- ============================================================
-- Updates
-- ============================================================

hl.workspace_rule({
    workspace = "special:updates",
    on_created_empty = "alacritty --class dotfiles-floating -e ~/Programming/scripts/fedora_update.sh --update",
})


-- ============================================================
-- Noctalia persistent workspaces
-- ============================================================

hl.workspace_rule({
    workspace = "1",
    monitor = "DP-9",
    persistent = true,
})

hl.workspace_rule({
    workspace = "2",
    monitor = "DP-9",
    persistent = true,
})

hl.workspace_rule({
    workspace = "3",
    monitor = "DP-9",
    persistent = true,
})

hl.workspace_rule({
    workspace = "4",
    monitor = "DP-9",
    persistent = true,
})