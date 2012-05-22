import QtQuick 1.1
import com.nokia.meego 1.0

PageStackWindow {
        id: appWindow
        initialPage: uploadPage

        property string imgpath: ""
        property string galleryresult: ""
        property string camerashot : ""






        UploadPage {
                        id: uploadPage


                                       }

        Gallery {
                        id: gallerypage


                                       }
        GalleryImage {

            id: galleryImage

        }

        CameraCapture {
            id: cameraCapture

        }

        CapturePreview {
            id: capturePreview

        }


        ImageChooser {
                id: imageChooser



            }

        About{
            id: about
        }

        NotYet{
            id:notYet
        }


        ToolBarLayout {
                id: commonTools
                visible: true

                ToolIcon {
                    platformIconId: "toolbar"
                        iconId: "toolbar-back"

                        visible: (appWindow.pageStack.depth === 1)? false: true
                        onClicked: {
                           pageStack.pop();
                        }
                }
                ToolIcon {
                        platformIconId: "toolbar-view-menu"
                        anchors.right: (parent === undefined)? undefined: parent.right
                        onClicked: (menu.status === DialogStatus.Closed)? menu.open(): menu.close()
                }
        }

        Menu {
                id: menu
                visualParent: pageStack
                MenuLayout {
                        MenuItem {
                                text: qsTr("About")
                               // theme.inverted = true;
                                onClicked: {menu.close(); about.open()}
                        }


                        MenuItem {
                                text: qsTr("Camera")
                                onClicked: {
                                   // uploader.gallery_request("today");
                                    menu.close();
                                    //cameraCapture.open();
                                    pageStack.push(cameraCapture)

                                }


                        }

                }
        }
}
