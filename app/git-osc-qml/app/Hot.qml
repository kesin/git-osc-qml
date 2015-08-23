import QtQuick 2.0
import Ubuntu.Components 1.1

Tab {
    title: i18n.tr("Hot Projects")

    Action {
        id: reloadAction
        text: "Reload"
        iconName: "reload"
        onTriggered: {
            console.log('reload the data');
        }
    }

    page: Page {
        Label {
            anchors.centerIn: parent
            text: i18n.tr("This is hot page")
        }

        tools: ToolbarItems {
            ToolbarButton {
                action: reloadAction
            }
        }
    }
}
