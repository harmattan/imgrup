import QtQuick 1.1
import com.meego 1.0


Rectangle {
    id: header


    property alias textleft: labelLeft.text
    property alias textmiddle: labelMiddle.text
    property alias textright: labelRight.text



    gradient: Gradient {
        GradientStop { position: 0.0; color: "#515151" }
        GradientStop { position: 1.0; color: "#313131" }
    }

    width: parent.width
    height: 70

Column{
    width: parent.width
    height: parent.height

    Label {
        x: labelLeft.x
        y: labelLeft.y + 1
        text: labelLeft.text
        font.pixelSize: 32
        color: '#000'
    }




    Label {
        id: labelLeft
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        font.pixelSize: 32
        color: '#eee'
        text:(pageStack.currentPage===gallerypage) ? "Refresh" : "Gallery"
        MouseArea {
            id:leftclick
            width:parent.width
            height:parent.height
            onClicked: {
                gallery_req.gallery_request("today");
                pageStack.push(gallerypage);


            }
        }




    }
    Label {
        x: labelMiddle.x
        y: labelMiddle.y + 1
        text: labelMiddle.text
        font.pixelSize: 42
        color: '#000'
    }




    Label {
        id: labelMiddle
        anchors.verticalCenter: parent.verticalCenter
        anchors.centerIn: parent
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        font.pixelSize: 42
        color: '#eee'
//        MouseArea {
//            id:leftclick
//            width:parent.width
//            height:parent.height
//            onClicked: {
//                uploader.gallery_request("today");
//                pageStack.push(gallerypage);


//            }
//        }




    }
    Label {
        x: labelRight.x
        y: labelRight.y + 1
        text: labelRight.text
        font.pixelSize: 32
        color: '#000'
    }




    Label {
        id: labelRight
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        font.pixelSize: 32
        color: '#eee'
        text:"Sign In"
        MouseArea {

            width:parent.width
            height:parent.height
            onClicked: {
                notYet.open()

            }
        }




    }
}


//    Rectangle {
//        x: 0
//        y: 68
//        width: parent.width
//        height: 1
//        color: theme.inverted ? '#222' : '#000'
//    }

//    Rectangle {
//        x: 0
//        y: 69
//        width: parent.width
//        height: 1
//        color: theme.inverted ? '#000' : '#fff'
//    }
}
