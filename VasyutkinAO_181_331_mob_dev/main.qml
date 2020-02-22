import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12


ApplicationWindow {
    id:mainWindow   //если к объекту не планиуется обращаться, то id можно не задавать, название должно начинаться с маленькой буквы
    visible: true
    width: 375
    height: 667
    title: qsTr("MainWindow")   //qsTr - функция для перключения языка строки
    Material.background: "white"
    font.capitalization: Font.MixedCase
    Material.accent: "#007DFA"

    header: ToolBar {
        id: toolbar
        anchors.leftMargin: 10
        anchors.left: parent.left;
        layer.enabled: true
        Material.background: "white"
        Text {
            font.family: "SF UI Display Bold"
            text: "Элементы GUI"
            font.pointSize: 23
            color: "black"
            anchors.bottom: parent.bottom


        }
    }


    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        /*Page {
            Button {
                id: button1
                text: "Button"
                font.family: ""
                font.bold: true
                font.pixelSize: 30
                font.italic: true

            }

            Button {   //страница демонстрации anchor
                text: "Button"
                anchors.right: parent.right
                anchors.left: button1.right
                anchors.margins: 10
                anchors.top: button1.bottom
                font.pixelSize: 30
            }

            Button {
                text: "Button"
                width: 100
                height: 100
                anchors.centerIn: parent
                font.pixelSize: 30
            }

        }

        Page {   //страница демонстрации layout

            GridLayout {
            anchors.fill: parent   //привязываем по всем фронтам
            columns: 3

            Button {
                id: button2
                text: "Button"
                font.family: ""
                font.bold: true
                font.pixelSize: 30
                font.italic: true

            }

            Button {
                text: "Button"
                anchors.right: parent.right
                anchors.left: button1.right
                anchors.margins: 10
                anchors.top: button1.bottom
                font.pixelSize: 30
            }

            Button {
                text: "Button"
                width: 100
                height: 100
                font.pixelSize: 30
                Layout.row: 2   //напрямую объявляем для кнопки строку
                Layout.column: 2   //напрямую объявляем для кнопки столбец
                Layout.preferredHeight: 200   //настраиваем предпочтительную высоту
                Layout.preferredWidth: 200   //настраиваем предпочтительную ширину
            }

            }
            //anchors запрещены
        }*/
        Page{
            scale: 1
            /*Button {
                id: button1
                text: "Привет"
                font.family: "SF UI Display Regular"
                font.pixelSize: 15

            }*/

            BusyIndicator {
                id: busyindicator
                anchors.leftMargin: 10
                anchors.topMargin: 35
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                layer.enabled: true
                running: image.status === Image.Loading
                Material.accent: "#99999b"


            }
            Dial {
                id: dial

                to: 100
                anchors.leftMargin: 10
                anchors.topMargin: 40
                anchors.top: slider.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            ColumnLayout {
                anchors.leftMargin: 10
                anchors.topMargin: 90
                anchors.top: dial.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                Material.accent: "#32c656"

                Switch {
                    text: qsTr("Включить хорошее настроение")
                    Material.foreground: "#000"
                    font.family: "SF UI Text Regular"


                }
            }
            Slider {
                id:slider
                from: 1
                to: 100
                anchors.leftMargin: 10
                anchors.topMargin: 40
                anchors.top: busyindicator.bottom
                anchors.left: parent.left;
                anchors.horizontalCenter: parent.horizontalCenter


            }

            Text {
                text: "Загрузка..."
                font.family: "SF UI Text Regular"
                font.pointSize: 10
                color: "#000"
                anchors.leftMargin: 10
                anchors.top: busyindicator.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextArea {
                color: "#000"
                placeholderText: qsTr("Введите какой-нибудь текст")
                placeholderTextColor: "#99999b"
                font.family: "SF UI Text Regular"
                font.pointSize: 12
                Material.accent: "#007DFA"
                anchors.bottom: parent.bottom
                anchors.leftMargin: 10
                anchors.left: parent.left

            }
        }

        Page{

        }

        Page{


        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        font.family: "SF UI Display Light"

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
        TabButton {
            text: qsTr("Page 3")
        }
    }
}
