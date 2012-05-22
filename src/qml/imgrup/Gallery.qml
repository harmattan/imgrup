import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: gallerypage
    tools: commonTools
    orientationLock: PageOrientation.LockPortrait



    Connections{
        target:gallery_req
        onResultgallery: {





            galgrid.model.clear();
            var result = JSON.parse(data);
            for (var i in result.gallery) {
                var output = result.gallery[i];


                testmodel.append({
                                  hash: output.hash,
                                  title: output.title,
                                  ext: output.ext,
                                  date: output.datetime,
                                  points: output.points
                                 });

                galgrid.model = testmodel;
            }




        }
    }




    ListModel {
        id:testmodel
     }

    GridView

    {
        id: galgrid
        anchors.top:galleryHeader.bottom
        width: parent.width
        height: parent.height-galleryHeader.height
        //anchors.fill: parent
       // header: true
        //rotation: 270

        Component{
            id:galleryitem
            Item{
                //width: grid.cellWidth; height: grid.cellHeight


            Column {
            Image{

                    //id:
                    height: 160
                    width: 160
                    smooth: true
                    source:  "http://imgur.com/" + hash + "s" + ext
                    MouseArea{
                         anchors.fill: parent
                         onClicked: {
                             console.log("details for " + hash);
                             gallery_req.image_details(hash);
//                             galleryImage.commentsmodel.clear();
                             pageStack.push(galleryImage);

                         }

                   }
            }



        Text{
            text:date
            wrapMode: "Wrap"
            horizontalAlignment: Text.AlignHCenter
            anchors.left:parent.left
            anchors.right:parent.right
            anchors.margins: 5
            color: "#7e7b7b"
            font.pointSize: 10

            }
            }
       }
    }

        //maximumFlickVelocity: 3000

        model: testmodel

        cellHeight: 180
        cellWidth: 160
        cacheBuffer: 3600
        delegate:galleryitem








    }



    PageHeader {
        id:galleryHeader
 //       textleft:"Gallery"
        textmiddle: "[Gallery]"
 //       textright:"Sign In"


    }
}
