/****************************************************************************
** Meta object code from reading C++ file 'gallery.h'
**
** Created: Tue Jun 5 22:35:08 2012
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "gallery.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gallery.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Gallery[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: signature, parameters, type, tag, flags
      14,    9,    8,    8, 0x05,
      37,    9,    8,    8, 0x05,

 // slots: signature, parameters, type, tag, flags
      68,   62,    8,    8, 0x0a,
      91,   62,    8,    8, 0x0a,

 // methods: signature, parameters, type, tag, flags
     127,  120,    8,    8, 0x02,
     157,  152,    8,    8, 0x02,

       0        // eod
};

static const char qt_meta_stringdata_Gallery[] = {
    "Gallery\0\0data\0resultgallery(QString)\0"
    "resultimagedata(QString)\0reply\0"
    "parser(QNetworkReply*)\0"
    "image_parser(QNetworkReply*)\0period\0"
    "gallery_request(QString)\0hash\0"
    "image_details(QString)\0"
};

const QMetaObject Gallery::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Gallery,
      qt_meta_data_Gallery, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Gallery::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Gallery::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Gallery::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Gallery))
        return static_cast<void*>(const_cast< Gallery*>(this));
    return QObject::qt_metacast(_clname);
}

int Gallery::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: resultgallery((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: resultimagedata((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: parser((*reinterpret_cast< QNetworkReply*(*)>(_a[1]))); break;
        case 3: image_parser((*reinterpret_cast< QNetworkReply*(*)>(_a[1]))); break;
        case 4: gallery_request((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: image_details((*reinterpret_cast< QString(*)>(_a[1]))); break;
        default: ;
        }
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void Gallery::resultgallery(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Gallery::resultimagedata(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
