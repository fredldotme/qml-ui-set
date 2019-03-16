import QtQuick 2.2
import QtQuick.Controls 2.2

Row {
    spacing: 8
    property alias label : detailLabel.text
    property alias labelFont : detailLabel.font
    property alias labelColor : detailLabel.color
    property alias value : detailValue.text
    property alias valueFont : detailValue.font
    property alias valueColor : detailValue.color
    property real ratio : 0.5

    Label {
        id: detailLabel
        font.bold: true
        width: parent.width * ratio
        horizontalAlignment: Text.AlignRight
    }
    Label {
        id: detailValue
        width: (parent.width) - detailLabel.width
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
    }
}
