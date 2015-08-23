import QtQuick 2.0
import Ubuntu.Components 1.1

Tab {
    title: i18n.tr("Recommend Projects")

    Action {
        id: reloadAction
        text: "Reload"
        iconName: "reload"
        onTriggered: {
            alert('hey!');
        }
    }

    page: Page {
        Label {
            anchors.centerIn: parent
            text: i18n.tr("This is page one")
        }

        tools: ToolbarItems {
            ToolbarButton {
                action: reloadAction
            }
        }
    }
}
