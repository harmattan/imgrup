import QtQuick 1.1
import com.nokia.meego 1.0

Page {
      id:capturePreview
      orientationLock: PageOrientation.LockPortrait
      //tools:commonTools
        Text{
            text:camerashot
        }

        Image{
            id:camerapreview
            rotation: 90
            anchors.top: parent.top
            anchors.centerIn: parent
            source:camerashot
        }

        Button {
            id: capturesubmit
            anchors.top: camerapreview.bottom
            anchors.left:parent.left
           // anchors.right:captureretake.left
            text: "Upload"
            onClicked:
            {

               imgpath = camerashot;
               pageStack.push(uploadPage);
            }
        }
        Button {
            id: captureretake
            anchors.top: camerapreview.bottom
            anchors.right:parent.right
            anchors.left:captureretake.right
            text: "reTake"
            onClicked:
            {
               pageStack.pop();
            }


               }
    }



