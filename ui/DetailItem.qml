import QtQuick 2.2

Row {
    spacing: 8
    property alias label : detailLabel.text
    property alias value : detailValue.text
    property real ratio : 0.5

    Text {
        id: detailLabel
        font.bold: true
        width: parent.width * ratio
        horizontalAlignment: Text.AlignRight
    }
    Text {
        id: detailValue
        width: (parent.width) - detailLabel.width
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
    }
}
