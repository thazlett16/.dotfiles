pragma Singleton

import Quickshell
import QtQuick

// Shared look for every bar widget; colors match kitty's Catppuccin Mocha theme
Singleton {
    readonly property color background: "#1e1e2e"
    readonly property color foreground: "#cdd6f4"
    readonly property color accent: "#cba6f7"
    readonly property color muted: "#6c7086"

    readonly property string fontFamily: "JetBrainsMonoNL Nerd Font"
    readonly property int fontSize: 11

    readonly property int barHeight: 30
    readonly property int spacing: 8
    readonly property int radius: 8
}
