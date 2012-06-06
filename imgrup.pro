TEMPLATE = subdirs
SUBDIRS += src \
           imgurplugin

providers.path = $$system(pkg-config --variable=providerfilesdir accounts-qt)
providers.files += providers/*

icons.path = /usr/share/themes/base/meegotouch/icons/
icons.files = icons/*

stylesheets.path = /usr/share/themes/base/meegotouch/imgurplugin/style
stylesheets.files = imgurplugin/imgurplugin.css


INSTALLS += providers icons stylesheets


invoker.path = $$system(pkg-config --variable=providerplugindir AccountPlugin)
invoker.files = imgurplugin/invoker/imgurplugin
INSTALLS += invoker

OTHER_FILES +=  imgurplugin/invoker/imgurplugin \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/manifest.aegis \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog \
    qtc_packaging/debian_harmattan/postinst \
    qtc_packaging/debian_harmattan/install
