import QtQuick 1.1
import com.nokia.meego 1.0
import QtMultimediaKit 1.1

Page {
     id:cameraCapture
     orientationLock: PageOrientation.LockPortrait
     width: parent.width
     height: parent.height



     PageHeader {
         id:cameraHeader
  //       textleft:"Gallery"
         textmiddle: "[Camera]"
  //       textright:"Sign In"


     }


     Rectangle{
         id:cameraObj
         anchors.top: cameraHeader.bottom
         width: parent.width
         height: parent.height-cameraHeader.height
         color: "black"
         state: "CAMERA"

         Camera {
                            id: camera
                            rotation: 90
                            anchors.fill: parent
                            //anchors.centerIn: parent
                            width:parent.width
                            height: parent.height
                            focus: visible //to receive focus and capture key events
                            captureResolution.width: parent.width// Qt.size( 1456 ) // 2592X1456 fullsceen picture, thanks to Jonni Rainisto
                            captureResolution.height: parent.height
                            onImageCaptured : {
                                camerashot = preview // Show the preview in an Image element

                                state = "PREVIEW";
                                }
                            onImageSaved: {

                                imgpath = qsTr("file://"+path);
                                console.log(imgpath)
                                //uploadPage.previewimg.source = imgpath;

                                       }

                }

         Image{
             id: capturePreview
             rotation: 90
             anchors.fill: parent
             //anchors.centerIn: parent
             width:parent.width
             height: parent.height
             focus: visible //to receive focus and capture key events
             source: camerashot

         }


         Button{
                           id:photoshoot
                           anchors.bottom: parent.bottom
                           text:"take a pic"
                           checkable: false
                           enabled:true
                           anchors.horizontalCenter: parent.horizontalCenter
                           onClicked: {
                               camera.captureImage();
                               //pageStack.push(capturePreview);
                               cameraObj.state = "PREVIEW";





                           }



               }

         Button{
                           id:photoupload
                           anchors.bottom: parent.bottom
                           text:"upload"
                           checkable: false
                           enabled:true
                           anchors.left:parent.left
                           anchors.right: parent.horizontalCenter
                           anchors.margins: 5
                           onClicked: {
                               //camera.imageSave();


                               pageStack.push(uploadPage);




                           }



               }
         Button{
                           id:photoretake
                           anchors.bottom: parent.bottom
                           text:"re-take"
                           checkable: false
                           enabled:true
                           anchors.right:parent.right
                           anchors.left: photoupload.right
                            anchors.margins: 5
                           onClicked: {
                                 cameraObj.state = "CAMERA";






                           }



               }




         states: [
            State {
                    name: "CAMERA"
                    PropertyChanges {
                        target: camera
                        visible:true

                    }
                    PropertyChanges {
                        target: capturePreview
                        visible:false

                    }
                    PropertyChanges {
                        target: photoretake
                        visible:false

                    }
                    PropertyChanges {
                        target: photoupload
                        visible:false

                    }
                    PropertyChanges {
                        target: photoshoot
                        visible:true

                    }
                       },
            State {
                     name: "PREVIEW"

                     PropertyChanges {
                         target: camera
                         visible:false

                     }
                     PropertyChanges {
                         target: capturePreview
                         visible:true

                     }
                     PropertyChanges {
                         target: photoretake
                         visible:true

                     }
                     PropertyChanges {
                         target: photoupload
                         visible:true

                     }
                     PropertyChanges {
                         target: photoshoot
                         visible:false

                     }

            }


                   ]


     }



 }
