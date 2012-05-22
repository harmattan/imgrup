import QtQuick 1.1
import com.nokia.meego 1.0
import QtMobility.gallery 1.1

Page {
    id: imageChooser
    //    titleText: qsTr("Select a picture to upload")
    //    width: parent.height
    //    height: parent.width


    //    content:

    GridView
    {
        width: parent.height
        height: parent.width
        anchors.fill: parent
        maximumFlickVelocity: 3000
        cellHeight: 160
        cellWidth: 160
        model: DocumentGalleryModel {
            rootType: DocumentGallery.Image
            properties: [ "url" ]
            sortProperties: [ "-dateTaken" ]

        }

        delegate: Image {
            id : delimg
            property int errorCount :0
            source: "file:///home/user/.thumbnails/grid/" + Qt.md5(url) + ".jpeg"
            width: 160
            height: 160
            asynchronous: true
            smooth: true
            onStatusChanged: {

                if (delimg.status === Image.Error) {
                    errorCount += 1;
                    if (errorCount === 1) {
                        console.log("no image");
                        delimg.source = url;
                    } else {
                        delimg.source =  "file:///home/user/.thumbnails/grid/" + Qt.md5(url) + ".jpeg";
                    }
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    imgpath = url;
                    pageStack.pop();



                }
            }
        }



    }





}


