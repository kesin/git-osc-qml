import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 1.0 as ListItem

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "tabapp.ubuntu"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(50)
    height: units.gu(75)

    Action {
        id: reloadAction
        text: "Reload"
        iconName: "reload"
        onTriggered: {
            console.log("reload is clicked")
        }
    }

    PageStack {
        id: pageStack
        Component.onCompleted: push(tabs)

        Tabs {
            id: tabs
            Tab {
                title: "Recommend Projects"
                page: Page {
                    ListView {
                        clip: true
                        anchors.fill: parent
                        model: 20
                        delegate: ListItem.Standard {
                            iconName: "compose"
                            text: "Item "+modelData
                        }
                    }
//                    Button {
//                        anchors.centerIn: parent
//                        onClicked: pageStack.push(project)
//                        text: "Press"
//                    }
                }
            }
            Tab {
                title: "Hot Projects"
                page: Page {
                    Button {
                        anchors.centerIn: parent
                        onClicked: pageStack.push(project)
                        text: "Hot"
                    }
                }
            }
            Tab {
                title: "Latest Projects"
                page: Page {
                    Button {
                        anchors.centerIn: parent
                        onClicked: pageStack.push(project)
                        text: "Latest"
                    }
                }
            }
        }
        Page {
            id: project
            visible: false
            title: "Page on stack"
            Label {
                anchors.centerIn: parent
                text: "Press back to return to the tabs"
            }
        }
    }
}

