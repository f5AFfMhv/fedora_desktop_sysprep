-- ============================================================
-- Thunderbird
-- ============================================================
-- special:thunderbird: launched on creation (see on_created_empty handler at the bottom)

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
-- special:missioncenter: launched on creation (see on_created_empty handler at the bottom)

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
-- special:elisa: launched on creation (see on_created_empty handler at the bottom)

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
-- special:memos: launched on creation (see on_created_empty handler at the bottom)

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
-- special:terminal1: launched on creation (see on_created_empty handler at the bottom)



-- ============================================================
-- Terminal 2
-- ============================================================

-- special:terminal2: launched on creation (see on_created_empty handler at the bottom)


-- ============================================================
-- Terminal 3
-- ============================================================

-- special:terminal3: launched on creation (see on_created_empty handler at the bottom)


-- ============================================================
-- Updates
-- ============================================================

-- special:updates: launched on creation (see on_created_empty handler at the bottom)


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

-- ============================================================
-- Launch apps when special workspaces are created empty
-- (replaces the deprecated on_created_empty workspace rule)
-- ============================================================
local on_created_empty = {
    ["special:thunderbird"] = "flatpak run org.mozilla.thunderbird_esr -mail",
    ["special:missioncenter"] = "flatpak run io.missioncenter.MissionCenter",
    ["special:elisa"] = "flatpak run org.kde.elisa",
    ["special:memos"] = "flatpak run io.github.ungoogled_software.ungoogled_chromium --app=https://memos.home.lab",
    ["special:terminal1"] = "alacritty --class dotfiles-floating",
    ["special:terminal2"] = "alacritty --class dotfiles-floating",
    ["special:terminal3"] = "alacritty --class dotfiles-floating",
    ["special:updates"] = "alacritty --class dotfiles-floating -e ~/Projects/scripts/fedora_update.sh --update",
}

hl.on("workspace.created", function(ws)
    local cmd = on_created_empty[ws.name]
    if cmd and ws.is_empty then
        hl.exec_cmd(cmd)
    end
end)
