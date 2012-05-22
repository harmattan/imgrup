#include <QtGui/QApplication>
#include <QDebug>
#include <qmlapplicationviewer.h>
#include <QtDeclarative>
#include <QIcon>
#include <QLibraryInfo>


#include "upload.h"
#include "gallery.h"


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
        app.setApplicationName("imgrup");
        app.setApplicationVersion("0.0.4a");
        app.setOrganizationName("ZogG");
        Upload upload_img;
        Gallery gallery_req;

        QmlApplicationViewer viewer;
//        viewer.setResizeMode(QmlApplicationViewer::SizeRootObjectToView);
        viewer.setOrientation(QmlApplicationViewer::ScreenOrientationLockPortrait);
        viewer.rootContext()->setContextProperty("uploader",&upload_img);
        viewer.rootContext()->setContextProperty("gallery_req",&gallery_req);
//        viewer.rootContext()->setContextProperty("auth",&auth);
        QResource::registerResource("imgrup.qrc");
        viewer.setMainQmlFile(QLatin1String("qml/imgrup/main.qml"));
        viewer.showExpanded();
        return app.exec();
}
