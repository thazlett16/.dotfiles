// Lets the grid delegates reference `grid` from this file's outer component
pragma ComponentBehavior: Bound

import Quickshell
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import qs.common

// Month calendar opened from the Clock; the arrows page through months
PopupWindow {
    id: root

    // Any date inside the month being shown
    property date shownMonth: new Date()

    // Back to the current month whenever the panel opens (or closes)
    onVisibleChanged: shownMonth = new Date()

    grabFocus: true
    implicitWidth: 260
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
            spacing: Theme.spacing

            RowLayout {
                // Day 1 of the previous month; Date rolls month -1 back into last year
                BarText {
                    text: "‹"

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: root.shownMonth = new Date(root.shownMonth.getFullYear(), root.shownMonth.getMonth() - 1, 1)
                    }
                }

                BarText {
                    Layout.fillWidth: true
                    horizontalAlignment: Text.AlignHCenter
                    text: Qt.formatDate(root.shownMonth, "MMMM yyyy")
                }

                // Day 1 of the next month; Date rolls month 12 forward into next year
                BarText {
                    text: "›"

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: root.shownMonth = new Date(root.shownMonth.getFullYear(), root.shownMonth.getMonth() + 1, 1)
                    }
                }
            }

            DayOfWeekRow {
                Layout.fillWidth: true

                delegate: BarText {
                    required property string shortName

                    text: shortName
                    color: Theme.muted
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            MonthGrid {
                id: grid

                Layout.fillWidth: true
                month: root.shownMonth.getMonth()
                year: root.shownMonth.getFullYear()

                // Today in the accent color; days spilling in from the previous or
                // next month are dimmed
                delegate: BarText {
                    required property var model

                    text: model.day
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: model.today
                    color: model.today ? Theme.accent : model.month === grid.month ? Theme.foreground : Theme.muted
                }
            }
        }
    }
}
