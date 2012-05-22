import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: uploadPage
    tools: commonTools
    orientationLock: PageOrientation.LockPortrait
    width: parent.width
    height: parent.height

   PageHeader {
       id:uploadHeader
//       textleft:"Gallery"
       textmiddle: "[Upload]"
//       textright:"Sign In"


   }

    Connections{
        target:uploader
        onResulturl: {
            imglink.text = data;
            copylink.text = data;
        }
        onResultprogress:{
              uploadProgress.value = percentage;
            if (percentage===100)
                uploadProgress.visible=false;

        }
    }



    TextInput{
           id: copylink
           visible: false
           text:""
             }

    Text{
           id: imglink
          color: "#7e7b7b"
          anchors.top: uploadHeader.bottom
          anchors.left: parent.left
          anchors.right: parent.right
          anchors.margins: 50
          horizontalAlignment: Text.AlignHCenter
          font.pointSize: 22
          text:(imgpath === "")? "NO FILE IS CHOSEN YET":"PUSH THE BUTTON TO UPLOAD:"



              }
     ButtonRow{
         id: controlbuts
         anchors.top: imglink.bottom
         anchors.horizontalCenter: parent.horizontalCenter
         exclusive: false



         Button{
             id:open
             text:"open"
             checkable: false
            enabled:(copylink.text==="")?false :true
            onClicked: { Qt.openUrlExternally(imglink.text)}


         }
         Button{
         id: copy
         text: "copy"
         checkable: false
         enabled:(copylink.text==="")?false :true
         onClicked: {
             copylink.selectAll();
             copylink.copy();

                    }
         }
         Button{
             id:del
             text:"delete"
             enabled:false
             checkable: false

         }

         Button{
             id:share
             text:"share"
             enabled:false
             checkable: false
         }
     }


    Image {
    id:previewimg

    property int errorCount: 0
    anchors.margins: 50
    height: 160
    width: 160
    anchors.top: controlbuts.bottom
    anchors.left: parent.left
    asynchronous: true
    smooth: true
    source : imgpath;

   visible:(imgpath === "")? false: true
     // visible:(previewimg.source === "")? false: true
             MouseArea{
                        anchors.fill: parent
                        onClicked: {

                imgurme.enabled= true;
                pageStack.push(imageChooser);
                //imageChooser.open();

                                    }
                       }


    }

    ProgressBar{
        id: uploadProgress
        minimumValue: 0
        maximumValue: 100
        value: 0
        anchors.top: controlbuts.bottom
        anchors.topMargin: previewimg.height/2+50
        anchors.left: previewimg.right
        anchors.right: parent.right
        anchors.margins: 50
        visible:false


    }

    Button{
           id:imgchoser

           anchors.centerIn: parent



           font.pointSize: 22

           text: qsTr("Choose img")
           visible:(imgpath === "")? true: false
           onClicked: {
              // imageChooser.open();
               pageStack.push(imageChooser);

                      }
          }
    Button{

           id:imgurme
           anchors.margins: 50
           anchors.top: previewimg.bottom
           anchors.horizontalCenter: parent.horizontalCenter
           font.pointSize: 22

           text: qsTr("imgur me!")
           visible:(imgpath === "")? false: true

           onClicked: {
               console.log("uploading " + imgpath);
               uploader.upload_request(imgpath);
               imgurme.enabled= false;
               uploadProgress.visible=true;

           }
           }



}
