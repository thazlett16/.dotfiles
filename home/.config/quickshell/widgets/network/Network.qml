import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Networking
import qs.common

// An icon per connected device (ethernet or wifi), or an offline icon when none are.
// Click a device's icon for its details panel.
RowLayout {
    id: root

    spacing: Theme.spacing

    Repeater {
        model: Networking.devices

        BarText {
            id: device

            required property NetworkDevice modelData

            visible: modelData.connected
            text: modelData.type === DeviceType.Wired ? "󰈀" : "󰖩"

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: panel.visible = !panel.visible
            }

            NetworkPanel {
                id: panel

                deviceName: device.modelData.name
                anchor.item: device
                anchor.edges: Edges.Bottom
                anchor.gravity: Edges.Bottom
                anchor.margins.bottom: -Theme.spacing * 1
            }
        }
    }

    // Shown only when no device is connected
    BarText {
        visible: !Networking.devices.values.some(device => device.connected)
        text: "󰤮"
        color: Theme.muted
    }
}
