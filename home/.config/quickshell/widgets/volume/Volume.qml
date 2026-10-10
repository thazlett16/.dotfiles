import Quickshell
import QtQuick
import Quickshell.Services.Pipewire
import qs.common

// Speaker icon (crossed out and dimmed when muted); click to open the volume panel
BarText {
    id: root

    readonly property PwNode sink: Pipewire.defaultAudioSink
    readonly property bool muted: sink?.audio.muted ?? false

    // The sink is briefly null while the default output switches
    visible: sink !== null

    text: muted ? "󰝟" : "󰕾"
    color: muted ? Theme.muted : Theme.foreground

    // Volume/mute are only valid while the node is bound by a tracker
    PwObjectTracker {
        objects: [root.sink]
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: panel.visible = !panel.visible
    }

    VolumePanel {
        id: panel

        // Hang below the widget, centered on it; the negative margin
        // pushes the panel past the bottom of the bar
        anchor.item: root
        anchor.edges: Edges.Bottom
        anchor.gravity: Edges.Bottom
        anchor.margins.bottom: -Theme.spacing * 1
    }
}
