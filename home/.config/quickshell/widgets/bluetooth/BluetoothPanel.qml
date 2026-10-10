// Lets the Repeater delegates reference `root` from this file's outer component
pragma ComponentBehavior: Bound

import Quickshell
import Quickshell.Bluetooth
import QtQuick
import QtQuick.Layouts
import qs.common

// Popup to power the adapter on/off, connect paired devices, and scan for new ones
PopupWindow {
    id: root

    // Null for a moment at startup until bluez reports the adapter, hence the ?. below
    required property BluetoothAdapter adapter

    grabFocus: true
    implicitWidth: 300
    implicitHeight: content.implicitHeight + Theme.spacing * 4
    color: "transparent"

    // Stop scanning whenever the panel is closed, since scanning keeps the radio busy.
    // RestoreNone leaves it off afterwards instead of restoring the previous value.
    Binding {
        target: root.adapter
        property: "discovering"
        value: false
        when: !root.visible
        restoreMode: Binding.RestoreNone
    }

    Rectangle {
        anchors.fill: parent
        color: Theme.background
        radius: Theme.radius
        border.color: Theme.muted
        border.width: 1

        ColumnLayout {
            id: content

            anchors {
                fill: parent
                margins: Theme.spacing * 2
            }
            spacing: Theme.spacing

            RowLayout {
                BarText {
                    Layout.fillWidth: true
                    text: "Bluetooth"
                    color: Theme.muted
                }

                BarText {
                    text: root.adapter?.enabled ? "On" : "Off"
                    color: root.adapter?.enabled ? Theme.accent : Theme.muted

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: root.adapter.enabled = !root.adapter.enabled
                    }
                }
            }

            // Everything below only makes sense while the adapter is powered
            ColumnLayout {
                visible: root.adapter?.enabled ?? false
                spacing: Theme.spacing

                BarText {
                    text: "Paired"
                    color: Theme.muted
                }

                // Click a paired device to connect or disconnect it
                Repeater {
                    model: root.adapter?.devices ?? null

                    BarText {
                        id: pairedDevice

                        required property BluetoothDevice modelData

                        // modelData is briefly null while bluez removes a device, hence the ?.
                        visible: modelData?.paired ?? false
                        text: (modelData?.connected ? "● " : "○ ") + (modelData?.name ?? "") + (modelData?.batteryAvailable ? "  " + Math.round(modelData.battery * 100) + "%" : "")
                        color: modelData?.connected ? Theme.accent : Theme.foreground

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: pairedDevice.modelData.connected = !pairedDevice.modelData.connected
                        }
                    }
                }

                RowLayout {
                    BarText {
                        Layout.fillWidth: true
                        text: "Available"
                        color: Theme.muted
                    }

                    BarText {
                        text: root.adapter?.discovering ? "Scanning…" : "Scan"
                        color: root.adapter?.discovering ? Theme.accent : Theme.foreground

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: root.adapter.discovering = !root.adapter.discovering
                        }
                    }
                }

                // Devices found by a scan; click one to pair it, then it moves to Paired
                Repeater {
                    model: root.adapter?.devices ?? null

                    BarText {
                        id: availableDevice

                        required property BluetoothDevice modelData

                        // Scanned devices come and go often, so modelData can be briefly null
                        visible: modelData !== null && !modelData.paired && root.adapter.discovering
                        text: (modelData?.pairing ? "◌ " : "+ ") + (modelData?.name ?? "")
                        elide: Text.ElideRight
                        Layout.fillWidth: true

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: availableDevice.modelData.pair()
                        }
                    }
                }
            }
        }
    }
}
