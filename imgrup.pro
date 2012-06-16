TEMPLATE = subdirs
SUBDIRS += src imgurplugin



OTHER_FILES +=  imgurplugin/invoker/imgurplugin \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/manifest.aegis \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog \
    qtc_packaging/debian_harmattan/imgrup.install \
    qtc_packaging/debian_harmattan/postinst
