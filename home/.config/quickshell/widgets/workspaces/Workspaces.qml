import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import qs.common

// Every Hyprland workspace (on all monitors), in id order; click one to switch to it
RowLayout {
    id: root

    spacing: Theme.spacing

    Repeater {
        model: Hyprland.workspaces

        BarText {
            id: workspace

            required property HyprlandWorkspace modelData

            // Special (scratchpad) workspaces aren't part of the 1-9 set
            visible: !modelData.name.startsWith("special:")

            text: modelData.name
            color: modelData.focused ? Theme.accent : modelData.active ? Theme.foreground : Theme.muted

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: workspace.modelData.activate()
            }
        }
    }
}
