import QtQuick
import Quickshell.Hyprland
import qs.common

// Title of the focused window; empty when nothing is focused
BarText {
    id: root

    text: Hyprland.activeToplevel?.title ?? ""

    // Cut long titles with "…" once the parent limits the width
    elide: Text.ElideRight
}
