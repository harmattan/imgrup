import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id:imageComments
    tools: commonTools
    property int ind :0

    ListModel {
        id:commentsmodel
     }

    Connections{                            //after that use it for data as well instead of keeping global vars
        target:gallery_req
        onResultimagedata: {





            image_data_area.model.clear();
            var result = JSON.parse(data);





            for (var i in result.gallery["captions"]) {
                var output = result.gallery["captions"][i];

                console.log();
                commentsmodel.append({
                                  caption: output.caption,
                                  author: output.author,

                                 });
                 ind = i;


            }




        }
    }
}
