/*
 * This file is part of Fluid.
 *
 * Copyright (C) 2016 Michael Spencer <sonrisesoftware@gmail.com>
 *
 * $BEGIN_LICENSE:MPL2$
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * $END_LICENSE$
 */

import QtQuick 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import Fluid.Controls 1.0

Item {
    property alias iconName: icon.name
    property alias iconSource: icon.source
    property alias text: textLabel.text
    property alias subText: subTextLabel.text

    ColumnLayout {
        anchors.centerIn: parent
        
        width: parent.width - 2 * Units.mediumSpacing

        Icon {
            id: icon
            size: 96

            Layout.alignment: Qt.AlignHCenter
        }

        Label {
            id: textLabel
            font: FluidStyle.titleFont
            color: Material.secondaryTextColor
            horizontalAlignment: Qt.AlignHCenter

            Layout.fillWidth: true
        }

        Label {
            id: subTextLabel
            font: FluidStyle.subheadingFont
            color: Material.secondaryTextColor
            horizontalAlignment: Qt.AlignHCenter
            wrapMode: Text.Wrap
            visible: text !== ""

            Layout.fillWidth: true
        }
    }
}
