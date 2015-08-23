import QtQuick 2.0
import Ubuntu.Components 1.1

Tab {
    title: i18n.tr("Tab 2")

    page: Page {
        Label {
            anchors.centerIn: parent
            text: i18n.tr("This is page two")
        }
    }
}
