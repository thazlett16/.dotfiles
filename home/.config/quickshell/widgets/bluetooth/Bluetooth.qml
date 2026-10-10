import Quickshell
// Qualified, since this file's own type name (Bluetooth) matches the module's singleton
import Quickshell.Bluetooth as QsBluetooth
import QtQuick
import qs.common

// Bluetooth icon (dimmed when powered off); click for the bluetooth panel
BarText {
    id: root

    readonly property QsBluetooth.BluetoothAdapter adapter: QsBluetooth.Bluetooth.defaultAdapter

    // Hidden entirely on machines without a bluetooth adapter
    visible: adapter !== null

    text: adapter?.enabled ? "󰂯" : "󰂲"
    color: adapter?.enabled ? Theme.foreground : Theme.muted

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: panel.visible = !panel.visible
    }

    BluetoothPanel {
        id: panel

        adapter: root.adapter
        anchor.item: root
        anchor.edges: Edges.Bottom
        anchor.gravity: Edges.Bottom
        anchor.margins.bottom: -Theme.spacing * 1
    }
}
