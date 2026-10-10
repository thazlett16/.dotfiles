import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Pipewire
import qs.common

// Popup with output and input controls; opened from the Volume widget
PopupWindow {
    id: root

    // Closes the popup when clicking anywhere outside of it
    grabFocus: true

    implicitWidth: 320
    implicitHeight: content.implicitHeight + Theme.spacing * 4
    color: "transparent"

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
            spacing: Theme.spacing * 2

            AudioSection {
                Layout.fillWidth: true
                title: "Output"
                isSink: true
                node: Pipewire.defaultAudioSink
                icon: "󰕾"
                mutedIcon: "󰝟"
                onSelected: device => Pipewire.preferredDefaultAudioSink = device
            }

            AudioSection {
                Layout.fillWidth: true
                title: "Input"
                isSink: false
                node: Pipewire.defaultAudioSource
                icon: "󰍬"
                mutedIcon: "󰍭"
                onSelected: device => Pipewire.preferredDefaultAudioSource = device
            }
        }
    }
}
