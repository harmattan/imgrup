# Add more folders to ship with the application, here
folder_01.source = qml/imgrup
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =



TEMPLATE = app
TARGET = "imgrup"

QT += network
# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=

# Speed up launching on MeeGo/Harmattan when using applauncherd daemon
CONFIG += qdeclarative-boostable  \
          link_pkgconfig  \
          mobility \
          shareuiinterface-maemo-meegotouch \
          share-ui-plugin \
          share-ui-common \
          mdatauri

PKGCONFIG += libsignon-qt \
             signon-plugins\
             signon-oauth2plugin \
             qdeclarative-boostable \
             NAccountPlugin  \
             accounts-qt \
             signon-plugins AccountSetup gq-gconf

MOBILITY = multimedia
LIBS += -lQtMultimediaKit
# Add dependency to Symbian components
# CONFIG += qt-components

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    upload.cpp \
    gallery.cpp \  
    exttools.cpp

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

#TEMPLATE = subdirs

RESOURCES +=



OTHER_FILES += qml/imgrup/About.qml \
    qml/imgrup/Gallery.qml \
    qml/imgrup/ImageChooser.qml \
    qml/imgrup/CameraCapture.qml \
    qml/imgrup/Settings.qml \
    qml/imgrup/CapturePreview.qml \
    qml/imgrup/GalleryImage.qml \
    qml/imgrup/UploadPage.qml \
    qml/imgrup/PageHeader.qml \
    qml/imgrup/NotYet.qml \
    qml/imgrup/Comments.qml \
    imgs/reddit.png 


HEADERS += \
    upload.h \
    gallery.h \  
    exttools.h



icons.files = imgrup80.png
icons.path = /usr/share/icons/hicolor/80x80/apps/
imgs.files = imgs/reddit.png
imgs.path = /usr/share/imgrup
target.path = /opt/imgrup/bin
desktop.files = imgrup_harmattan.desktop
desktop.path = /usr/share/applications
INSTALLS += icons imgs desktop











