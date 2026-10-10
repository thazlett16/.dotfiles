import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import qs.common

// Popup with details for one network device: addresses, latency and live traffic
PopupWindow {
    id: root

    // Interface name of the device, e.g. "enp6s0"
    required property string deviceName

    property string localIp: "…"
    property string publicIp: "…"
    property string ping: "…"
    property real downloadRate: 0
    property real uploadRate: 0
    property real lastRxBytes: 0
    property real lastTxBytes: 0

    // Turns bytes/second into a readable rate, e.g. 2.4 MB/s
    function formatRate(bytesPerSecond: real): string {
        if (bytesPerSecond >= 1024 * 1024)
            return (bytesPerSecond / 1024 / 1024).toFixed(1) + " MB/s";
        if (bytesPerSecond >= 1024)
            return (bytesPerSecond / 1024).toFixed(1) + " KB/s";
        return Math.round(bytesPerSecond) + " B/s";
    }

    grabFocus: true
    implicitWidth: 280
    implicitHeight: content.implicitHeight + Theme.spacing * 4
    color: "transparent"

    // On open: forget old counters so the first rate isn't a huge jump,
    // and look up both addresses once
    onVisibleChanged: {
        if (!visible)
            return;
        lastRxBytes = 0;
        lastTxBytes = 0;
        localIpProcess.running = true;
        publicIpProcess.running = true;
    }

    // Every second while open: re-read the traffic counters and ping again
    Timer {
        interval: 1000
        repeat: true
        running: root.visible
        triggeredOnStart: true
        onTriggered: {
            rxFile.reload();
            txFile.reload();
            pingProcess.running = true;
        }
    }

    Process {
        id: localIpProcess
        command: ["nmcli", "-g", "IP4.ADDRESS", "device", "show", root.deviceName]
        // e.g. "192.168.0.9/24"
        stdout: StdioCollector {
            onStreamFinished: root.localIp = text.trim() || "none"
        }
    }

    Process {
        id: publicIpProcess
        command: ["curl", "-s", "--max-time", "5", "https://icanhazip.com"]
        stdout: StdioCollector {
            onStreamFinished: root.publicIp = text.trim() || "unavailable"
        }
    }

    Process {
        id: pingProcess
        command: ["ping", "-c", "1", "-W", "2", "1.1.1.1"]
        // Pulls "16.4 ms" out of "... time=16.4 ms"
        stdout: StdioCollector {
            onStreamFinished: root.ping = text.match(/time=([\d.]+ ms)/)?.[1] ?? "timeout"
        }
    }

    // The kernel's running total of bytes received on this device
    FileView {
        id: rxFile
        path: "/sys/class/net/" + root.deviceName + "/statistics/rx_bytes"
        // Rate = bytes since the last read (reads are 1s apart); the first read
        // after opening has nothing to compare against, so it shows 0
        onLoaded: {
            const bytes = Number(text());
            root.downloadRate = root.lastRxBytes > 0 ? bytes - root.lastRxBytes : 0;
            root.lastRxBytes = bytes;
        }
    }

    // Same as above for bytes sent
    FileView {
        id: txFile
        path: "/sys/class/net/" + root.deviceName + "/statistics/tx_bytes"
        onLoaded: {
            const bytes = Number(text());
            root.uploadRate = root.lastTxBytes > 0 ? bytes - root.lastTxBytes : 0;
            root.lastTxBytes = bytes;
        }
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

            BarText {
                text: root.deviceName
                color: Theme.muted
            }

            // Label / value pairs, two columns
            GridLayout {
                columns: 2
                columnSpacing: Theme.spacing * 2
                rowSpacing: Theme.spacing / 2

                BarText {
                    text: "Local IP"
                    color: Theme.muted
                }
                BarText {
                    text: root.localIp
                }

                BarText {
                    text: "Public IP"
                    color: Theme.muted
                }
                BarText {
                    text: root.publicIp
                }

                BarText {
                    text: "Ping"
                    color: Theme.muted
                }
                BarText {
                    text: root.ping
                }

                BarText {
                    text: "Download"
                    color: Theme.muted
                }
                BarText {
                    text: "↓ " + root.formatRate(root.downloadRate)
                }

                BarText {
                    text: "Upload"
                    color: Theme.muted
                }
                BarText {
                    text: "↑ " + root.formatRate(root.uploadRate)
                }
            }
        }
    }
}
