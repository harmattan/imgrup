TEMPLATE = app
TARGET = imgurplugin

CONFIG += qt link_pkgconfig warn_on \
          qdeclarative-boostable \
          qt-boostable \
          meegotouch-boostable 
#CONFIG += debug

CONFIG(debug){
        DEFINES += DEBUG
}

QT += xml declarative
QT -= thread

PKGCONFIG += accounts-qt AccountPlugin NAccountPlugin meegotouch libsignon-qt signon-plugins signon-oauth2plugin

QMAKE_CXXFLAGS += -fPIC -fvisibility=hidden -fvisibility-inlines-hidden
QMAKE_LFLAGS += -pie -rdynamic

HEADERS = imgurplugin.h

SOURCES = main.cpp \
          imgurplugin.cpp



target.path = /usr/lib/AccountSetup/bin
INSTALLS += target

