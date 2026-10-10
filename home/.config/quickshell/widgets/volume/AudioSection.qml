// Lets the Repeater's delegate reference `root` from this file's outer component
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell.Services.Pipewire
import qs.common

// One side of the volume panel (outputs or inputs): mute, slider, and device list
ColumnLayout {
    id: root

    required property string title
    // true lists outputs (sinks), false lists inputs (sources)
    required property bool isSink
    // The current default device for this side; may be null
    required property PwNode node
    required property string icon
    required property string mutedIcon

    // Emitted when a device in the list is clicked; the panel decides what to do with it
    signal selected(PwNode device)

    readonly property bool muted: node?.audio.muted ?? false
    readonly property real volume: node?.audio.volume ?? 0

    spacing: Theme.spacing

    // Volume/mute are only valid while the node is bound by a tracker
    PwObjectTracker {
        objects: [root.node]
    }

    BarText {
        text: root.title
        color: Theme.muted
    }

    RowLayout {
        spacing: Theme.spacing

        BarText {
            text: root.muted ? root.mutedIcon : root.icon
            color: root.muted ? Theme.muted : Theme.foreground

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: root.node.audio.muted = !root.muted
            }
        }

        Slider {
            Layout.fillWidth: true
            from: 0
            to: 1
            value: root.volume
            onMoved: root.node.audio.volume = value
        }

        BarText {
            text: Math.round(root.volume * 100) + "%"
        }
    }

    Repeater {
        model: Pipewire.nodes

        BarText {
            id: device

            required property PwNode modelData

            // Only hardware audio devices on this side; app streams are skipped.
            // modelData is briefly null while Pipewire adds/removes a node, hence the ?.
            visible: modelData?.audio != null && !modelData.isStream && modelData.isSink === root.isSink

            text: (modelData === root.node ? "● " : "○ ") + (modelData?.description || modelData?.name || "")
            color: modelData === root.node ? Theme.accent : Theme.foreground
            elide: Text.ElideRight
            Layout.fillWidth: true

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: root.selected(device.modelData)
            }
        }
    }
}
