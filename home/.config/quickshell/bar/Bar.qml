import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.common
import qs.widgets.bluetooth
import qs.widgets.clock
import qs.widgets.network
import qs.widgets.volume
import qs.widgets.windowtitle
import qs.widgets.workspaces

PanelWindow {
    id: root

    // Set by Variants in shell.qml: the screen this bar lives on
    required property var modelData

    screen: modelData

    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight: Theme.barHeight
    color: Theme.background

    // Each section is anchored independently so the center stays centered
    // on the screen no matter how wide the left/right sections grow
    RowLayout {
        id: leftSection

        anchors {
            left: parent.left
            leftMargin: Theme.spacing
            verticalCenter: parent.verticalCenter
        }
        spacing: Theme.spacing

        Workspaces {}
    }

    RowLayout {
        id: centerSection

        anchors.centerIn: parent
        spacing: Theme.spacing

        // Capped at a third of the bar so long titles never reach the side sections
        WindowTitle {
            Layout.maximumWidth: root.width / 3
        }
    }

    RowLayout {
        id: rightSection

        anchors {
            right: parent.right
            rightMargin: Theme.spacing
            verticalCenter: parent.verticalCenter
        }
        spacing: Theme.spacing

        Network {}

        Bluetooth {}

        Volume {}

        Clock {}
    }
}
