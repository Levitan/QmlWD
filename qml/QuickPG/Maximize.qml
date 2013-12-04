// Maximize.qml
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
    width: 18
    height: 18
    color: "#00ffffff"

    Image {
        id: image1
        anchors.fill: parent
        source: "qrc:/img/max.png"
        MouseArea {
            id: mousearea1
            hoverEnabled: true
            anchors.fill: parent
            onClicked: {
                qCall.appMax();
            }
        }
    }
    states: [
        State {
            name: "HOVER"
            when: mousearea1.containsMouse === true;
            PropertyChanges {
                target: image1
                source: "qrc:/img/max-hover.png"
            }
        }
    ]
}
