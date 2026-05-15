-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("waybar")
end)

-- Environment variables
hl.env("XCURSOR_SIZE",    "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Settings
hl.config({
    -- General
    ["general.gaps_in"]             = 5,
    ["general.gaps_out"]            = 5,
    ["general.border_size"]         = 2,
    -- ["general.col.active_border"]   = "rgba(33ccffee) rgba(00ff99ee) 45deg",
    -- ["general.col.inactive_border"] = "rgba(595959aa)",
    ["general.resize_on_border"]    = false,
    ["general.allow_tearing"]       = false,
    ["general.layout"]              = "dwindle",

    -- Decoration
    ["decoration.rounding"]         = 10,
    ["decoration.rounding_power"]   = 2,
    ["decoration.active_opacity"]   = 1.0,
    ["decoration.inactive_opacity"] = 1.0,

    -- Shadow
    ["decoration.shadow.enabled"]      = true,
    ["decoration.shadow.range"]        = 4,
    ["decoration.shadow.render_power"] = 3,
    ["decoration.shadow.color"]        = "rgba(1a1a1aee)",

    -- Blur
    ["decoration.blur.enabled"]   = true,
    ["decoration.blur.size"]      = 3,
    ["decoration.blur.passes"]    = 1,
    ["decoration.blur.vibrancy"]  = 0.1696,

    -- Animations enabled (curves/animations defined below)
    ["animations.enabled"] = true,

    -- Dwindle layout
    ["dwindle.preserve_split"] = true,

    -- Master layout
    ["master.new_status"] = "master",

    -- Misc
    ["misc.force_default_wallpaper"] = -1,
    ["misc.disable_hyprland_logo"]   = false,

    -- Input
    ["input.kb_layout"]  = "us",
    ["input.kb_variant"] = "",
    ["input.kb_model"]   = "",
    ["input.kb_options"] = "",
    ["input.kb_rules"]   = "",
    ["input.follow_mouse"] = 1,
    ["input.sensitivity"]  = 0,
    ["input.touchpad.natural_scroll"] = false,

    -- Cursor
    ["cursor.no_hardware_cursors"] = true,
})

-- Bezier curves
-- hl.curve("easeOutQuint",   0.23, 1,    0.32, 1)
-- hl.curve("easeInOutCubic", 0.65, 0.05, 0.36, 1)
-- hl.curve("linear",         0,    0,    1,    1)
-- hl.curve("almostLinear",   0.5,  0.5,  0.75, 1)
-- hl.curve("quick",          0.15, 0,    0.1,  1)

-- Animations
-- hl.animation("global",        1, 10,   "default")
-- hl.animation("border",        1, 5.39, "easeOutQuint")
-- hl.animation("windows",       1, 4.79, "easeOutQuint")
-- hl.animation("windowsIn",     1, 4.1,  "easeOutQuint", "popin 87%")
-- hl.animation("windowsOut",    1, 1.49, "linear",       "popin 87%")
-- hl.animation("fadeIn",        1, 1.73, "almostLinear")
-- hl.animation("fadeOut",       1, 1.46, "almostLinear")
-- hl.animation("fade",          1, 3.03, "quick")
-- hl.animation("layers",        1, 3.81, "easeOutQuint")
-- hl.animation("layersIn",      1, 4,    "easeOutQuint", "fade")
-- hl.animation("layersOut",     1, 1.5,  "linear",       "fade")
-- hl.animation("fadeLayersIn",  1, 1.79, "almostLinear")
-- hl.animation("fadeLayersOut", 1, 1.39, "almostLinear")
-- hl.animation("workspaces",    1, 1.94, "almostLinear", "fade")
-- hl.animation("workspacesIn",  1, 1.21, "almostLinear", "fade")
-- hl.animation("workspacesOut", 1, 1.94, "almostLinear", "fade")
-- hl.animation("zoomFactor",    1, 7,    "quick")

-- Gestures
hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})

-- Per-device config
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})

-- Window rules
hl.window_rule({
    name           = "suppress-maximize-events",
    match          = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
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

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true,
})
