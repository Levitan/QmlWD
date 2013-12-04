// Panel.qml
//
// Copyright 2013 Vitaly Levitan <vlevitan91@gmail.com>
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
// MA 02110-1301, USA.
//

import QtQuick 1.1

Rectangle {
    id: rectangle1
    width: 100
    height: 20
    Image {
        id: image1
        anchors.fill: parent
        fillMode: Image.Tile
        source: "qrc:/img/panel-bg.png"


        MouseArea {
                id: moveArea
                x: 0
                y: 0
                width: 627
                height: 329   // Имя MouseArea для qml
                anchors.fill: parent   // parent
                onDoubleClicked: qCall.appMax()
                onClicked: Qt.LeftButton  // Если нажата левая кнопка мыши
                onPositionChanged: qCall.move_window();  // Срабатывает функция при изменении положения зажатой левой кнопки мышки
                onEntered: qCall.moveCursor() // Вызывает функцию при нажатии кнопки
                onExited: qCall.cursor_down()
            }
    }

    Close {
        id: close1
        width: 18
        height: 18
        anchors.right: parent.right
        anchors.rightMargin: 2
        anchors.verticalCenter: parent.verticalCenter
      }

     Minimize {
        id: minimize1
        width: 18
        height: 18
        anchors.right: parent.right
        anchors.rightMargin: 42
        anchors.verticalCenter: parent.verticalCenter
      }

      Maximize {
          id: maximize1
          x: 36
          y: 1
          width: 18
          anchors.right: parent.right
          anchors.rightMargin: 22
          anchors.verticalCenter: parent.verticalCenter
      }
}
