local programs = require("util.programs")

local mod = "SUPER"

-- Window management
hl.bind(mod .. " + return", hl.dsp.exec_cmd(programs.terminal))
hl.bind(mod .. " + C",      hl.dsp.window.close())
hl.bind(mod .. " + M",      hl.dsp.exit())
hl.bind(mod .. " + E",      hl.dsp.exec_cmd(programs.fileManager))
hl.bind(mod .. " + V",      hl.dsp.window.float())
hl.bind(mod .. " + R",      hl.dsp.exec_cmd(programs.menu))
hl.bind(mod .. " + P",      hl.dsp.window.pseudo())

-- Focus (vim-style)
hl.bind(mod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + j", hl.dsp.focus({ direction = "down" }))
hl.bind(mod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + l", hl.dsp.focus({ direction = "right" }))

-- Workspaces 1-9
for i = 1, 10 do
    local key = i % 10
    hl.bind(mod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Scroll through workspaces
hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mouse
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { drag = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { drag = true })

-- Volume
hl.bind(" + XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true, locked = true })
hl.bind(" + XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { repeating = true, locked = true })
hl.bind(" + XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { repeating = true, locked = true })
hl.bind(" + XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { repeating = true, locked = true })

-- Brightness
hl.bind(" + XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { repeating = true, locked = true })
hl.bind(" + XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { repeating = true, locked = true })

-- Media (requires playerctl)
hl.bind(" + XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),        { locked = true })
hl.bind(" + XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"),  { locked = true })
hl.bind(" + XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"),  { locked = true })
hl.bind(" + XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),    { locked = true })
