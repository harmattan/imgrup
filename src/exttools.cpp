#include "exttools.h"

Tools::Tools(QObject *parent)
    : QObject(parent)
 {
  }

Tools::~Tools()
{

}

void Tools::share_link(QString linktoshare){

        // thanks matyjas for example on — https://github.com/matyjas/share-bear/
        QString title = "Imgrup";

        QString desc = "uploaded to imgur with N9";


        MDataUri duri;

        duri.setMimeType ("text/x-url");

        duri.setTextData (linktoshare);

        duri.setAttribute ("title", title);

        duri.setAttribute ("description", desc);

        if (duri.isValid() == false) {

            qCritical() << "Invalid URI";

            return;
        }


        QStringList link;

        link << duri.toString();
    ShareUiInterface shareIf("com.nokia.ShareUi");
    shareIf.share(link);

}


