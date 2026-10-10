import Quickshell
import QtQuick
import qs.common

// Date and time; click for the calendar
BarText {
    id: root

    text: Qt.formatDateTime(clock.date, "ddd MMM d  HH:mm")

    // Only ticks when the minute changes, since seconds aren't displayed
    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: calendar.visible = !calendar.visible
    }

    CalendarPanel {
        id: calendar

        anchor.item: root
        anchor.edges: Edges.Bottom
        anchor.gravity: Edges.Bottom
        anchor.margins.bottom: -Theme.spacing * 1
    }
}
