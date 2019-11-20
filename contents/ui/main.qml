/*
*  Copyright 2018-2019 Michail Vourlakos <mvourlakos@gmail.com>
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

import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4

import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.taskmanager 0.1 as TaskManager

Item {
    id: root
    clip: true

    Plasmoid.status: PlasmaCore.Types.ActiveStatus
    Plasmoid.preferredRepresentation: Plasmoid.fullRepresentation

    Layout.fillWidth: false
    Layout.fillHeight: true

    readonly property int configWidth: plasmoid.configuration.width
    readonly property int configHeight: 1

    Layout.minimumWidth: configWidth
    Layout.minimumHeight: configHeight
    Layout.preferredWidth: configWidth
    Layout.preferredHeight: configHeight
    Layout.maximumWidth: configWidth
    Layout.maximumHeight: configHeight
}
