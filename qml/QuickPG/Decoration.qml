// Decoration.qml
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
    width: 627
    height: 329
    color: "#00ffffff"

    Image {
        id: background
        fillMode: Image.Tile
        anchors.fill: parent
        source: "qrc:/img/bg.png"

        Rectangle {
            id: border
            color: "#00000000"
            anchors.fill: parent
            border.width: 4
            border.color: "#000000"
        }

        Image {
            id: resizeMark
            width: 18
            height: 18
            anchors.rightMargin: 2
            anchors.bottomMargin: 2
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            source: "qrc:/img/resizeMark.png"

            MouseArea {
                id: resizeArea
                anchors.fill: parent
                onClicked: Qt.LeftButton
                onPositionChanged: qCall.appResizeXY();
            }
        }
    }

    Panel {
        id: topPanel
        width: parent.width
        height: 20
    }
}
