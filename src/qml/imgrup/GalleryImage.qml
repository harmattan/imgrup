import QtQuick 1.1
import com.nokia.meego 1.0
import com.nokia.extras 1.0

Page {
    id:galleryImage
    tools: commonTools
    property string titletext: ""
    property string imgururl: ""
    property string pnts: ".."
    property string up: ".."
    property string date: "...."
    property string down: ".."
    property string view: ".."
    property string redditurl: ""
    ListModel {
        id:commentsmodel
    }




    Connections{                            //after that use it for data as well instead of keeping global vars
        target:gallery_req
        onResultimagedata: {

            commentsmodel.clear();
            var result = JSON.parse(data);
            if ( result.gallery.image.title===null){
                titletext="NO TITLE GIVEN";
            } else {
                titletext= result.gallery.image.title;
            }
            imgururl="http://imgur.com/" + result.gallery.image.hash + result.gallery.image.ext;
            date=result.gallery.image.datetime;
            up=result.gallery.image.ups;
            down=result.gallery.image.downs;
            pnts=result.gallery.image.points;
            view=result.gallery.image.views;
            redditurl=result.gallery.image.reddit;
            for (var i in result.gallery["captions"]) {
                var output = result.gallery["captions"][i];

                console.log();
                commentsmodel.append({
                                         caption: output.caption,
                                         author: output.author,

                                     });
            }

         console.log(image_data_area.commentitem.comment.text);
        }
    }

    ListView

    {
        id: image_data_area


        anchors.top:galleryHeader.bottom
        anchors.bottom: commonTools.top6
        height:parent.height-commonTools.height
        width:parent.width
        spacing:5





        Component{
            id:commentitem
            Item{
                height:comment.height+nick.height+30
                width: parent.width


                Text{
                    id:comment
                    text:caption
                    wrapMode: "Wrap"
                    anchors.left:parent.left
                    anchors.right:parent.right
                    anchors.margins: 5
                    font.pointSize: 20

                }

                Text{
                    id :nick
                    wrapMode: "Wrap"
                    color: "#7e7b7b"
                    font.pointSize: 15
                    anchors.right: parent.right
                    anchors.top: comment.bottom
                    anchors.margins: 5
                    text: "by "+author



                }

                Rectangle{
                    id:separator
                    width:parent.width-250
                    height:1
                    anchors.top: nick.bottom
                    anchors.topMargin: 10
                    //                    anchors.right: parent.right
                    //                    anchors.left:parent.left
                    anchors.horizontalCenter: parent.horizontalCenter
                    //anchors.margins: 5

                    color:"gray"
                }
            }
        }



        model: commentsmodel
        delegate:commentitem
        header:

            Component {
            id:image_area

            Item {
                width:parent.width
                height:title.height+imagepreview.height+points.height+reddit.height+dates.height+80



                Text{
                    id :title
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: "Wrap"
                    color: "#7e7b7b"
                    font.pointSize: 22
                    anchors.right: parent.right
                    anchors.left: parent.left
                    anchors.margins: 30
                    text: titletext



                }


                AnimatedImage{
                    id: imagepreview
                    width: parent.weight

                    fillMode: Image.PreserveAspectFit
                    anchors.margins: 20
                    anchors.top: title.bottom
                    anchors.right: parent.right
                    anchors.left: parent.left
                    anchors.horizontalCenter: parent.Center
                    source:imgururl






                }

                Text {
                    id :dates

                    wrapMode: "Wrap"
                    color: "#7e7b7b"
                    font.pointSize: 10
                    anchors.top: imagepreview.bottom
                    anchors.right: parent.right
                    anchors.margins: 5
                    text: date


                }

                Text {
                    id :points

                    wrapMode: "Wrap"
                    color: "#7e7b7b"
                    font.pointSize: 15
                    anchors.left: parent.left
                    anchors.top: dates.bottom
                    anchors.margins: 5
                    text: "Views: "+view+" — "+pnts+" points ("+up+" ups/"+down+" downs)"


                }





                BorderImage {
                    id:reddit
                    width:redditicon.width+2
                    height: redditicon.height+2
                        anchors.left: parent.left
                        anchors.top: points.bottom
                        anchors.topMargin:15
                    Image {
                        id :redditicon
                       // anchors.fill: parent

                        source:"/usr/share/imgrup/reddit.png"
                        MouseArea{
                            anchors.fill: parent
                            onClicked: { Qt.openUrlExternally("http://reddit.com"+redditurl)}

                        }



                    }
                }



            }


        }


    }


    PageHeader {
        id:galleryHeader
        textleft:""
        textmiddle: "[Image]"
        textright:"Sign In"


    }




}
