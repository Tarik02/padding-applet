/*
*  Copyright 2018 Michail Vourlakos <mvourlakos@gmail.com>
*
*  This file is part of applet-window-title
*
*  Latte-Dock is free software; you can redistribute it and/or
*  modify it under the terms of the GNU General Public License as
*  published by the Free Software Foundation; either version 2 of
*  the License, or (at your option) any later version.
*
*  Latte-Dock is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
*
*  You should have received a copy of the GNU General Public License
*  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.9
import QtQuick.Controls 1.0
import QtQuick.Controls 2.2 as Controls22
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.0

import org.kde.plasma.core 2.0 as PlasmaCore

Item {
    id: root

    property alias cfg_width: widthSpn.value

    ColumnLayout {
        id: mainColumn
        spacing: units.largeSpacing
        Layout.fillWidth: true

        RowLayout {
            Label {
                Layout.leftMargin: units.smallSpacing
                text: "Padding width"
            }

            SpinBox {
                id: widthSpn
                minimumValue: 1
                maximumValue: 128
                suffix: " px."
            }
        }
    }
}
