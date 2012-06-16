TEMPLATE = app
TARGET = "imgurplugin"

CONFIG += qt link_pkgconfig warn_on \
          qdeclarative-boostable \
          qt-boostable \
          meegotouch-boostable signon-qt libsignon-qt
#CONFIG += debug

CONFIG(debug){
        DEFINES += DEBUG
}

QT += xml declarative
QT -= thread

PKGCONFIG += accounts-qt AccountPlugin meegotouch \
             libsignon-qt \
             signon-plugins\
             signon-oauth2plugin \
             qdeclarative-boostable \
             NAccountPlugin  \
             accounts-qt \
             AccountSetup gq-gconf libsignon-qt

QMAKE_CXXFLAGS += -fPIC -fvisibility=hidden -fvisibility-inlines-hidden
QMAKE_LFLAGS += -pie -rdynamic

HEADERS = imgurplugin.h

SOURCES = main.cpp \
          imgurplugin.cpp

providers.path = $$system(pkg-config --variable=providerfilesdir accounts-qt)
providers.files += providers/*

icons.path = /usr/share/themes/base/meegotouch/icons/
icons.files = ../icons/*

stylesheets.path = /usr/share/themes/base/meegotouch/imgurplugin/style
stylesheets.files = imgurplugin.css


INSTALLS += providers icons stylesheets


invoker.path = $$system(pkg-config --variable=providerplugindir AccountPlugin)
invoker.files = invoker/imgurplugin
INSTALLS += invoker


target.path = /usr/lib/AccountSetup/bin
INSTALLS += target

