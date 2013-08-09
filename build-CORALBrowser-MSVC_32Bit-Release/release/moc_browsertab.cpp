/****************************************************************************
** Meta object code from reading C++ file 'browsertab.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.1.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../CORALBrowser/browsertab.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'browsertab.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.1.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_BrowserTab_t {
    QByteArrayData data[13];
    char stringdata[179];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_BrowserTab_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_BrowserTab_t qt_meta_stringdata_BrowserTab = {
    {
QT_MOC_LITERAL(0, 0, 10),
QT_MOC_LITERAL(1, 11, 19),
QT_MOC_LITERAL(2, 31, 0),
QT_MOC_LITERAL(3, 32, 17),
QT_MOC_LITERAL(4, 50, 20),
QT_MOC_LITERAL(5, 71, 20),
QT_MOC_LITERAL(6, 92, 10),
QT_MOC_LITERAL(7, 103, 3),
QT_MOC_LITERAL(8, 107, 9),
QT_MOC_LITERAL(9, 117, 14),
QT_MOC_LITERAL(10, 132, 14),
QT_MOC_LITERAL(11, 147, 18),
QT_MOC_LITERAL(12, 166, 11)
    },
    "BrowserTab\0timerConnectionLost\0\0"
    "backButtonClicked\0forwardButtonClicked\0"
    "refreshButtonClicked\0urlChanged\0url\0"
    "changeUrl\0startedLoading\0stoppedLoading\0"
    "alertDisconnection\0restrictUrl\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_BrowserTab[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   64,    2, 0x05,

 // slots: name, argc, parameters, tag, flags
       3,    0,   65,    2, 0x08,
       4,    0,   66,    2, 0x08,
       5,    0,   67,    2, 0x08,
       6,    1,   68,    2, 0x08,
       8,    0,   71,    2, 0x08,
       9,    0,   72,    2, 0x08,
      10,    0,   73,    2, 0x08,
      11,    0,   74,    2, 0x08,
      12,    1,   75,    2, 0x08,

 // signals: parameters
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QUrl,    7,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QUrl,    7,

       0        // eod
};

void BrowserTab::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        BrowserTab *_t = static_cast<BrowserTab *>(_o);
        switch (_id) {
        case 0: _t->timerConnectionLost(); break;
        case 1: _t->backButtonClicked(); break;
        case 2: _t->forwardButtonClicked(); break;
        case 3: _t->refreshButtonClicked(); break;
        case 4: _t->urlChanged((*reinterpret_cast< QUrl(*)>(_a[1]))); break;
        case 5: _t->changeUrl(); break;
        case 6: _t->startedLoading(); break;
        case 7: _t->stoppedLoading(); break;
        case 8: _t->alertDisconnection(); break;
        case 9: _t->restrictUrl((*reinterpret_cast< QUrl(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (BrowserTab::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&BrowserTab::timerConnectionLost)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject BrowserTab::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_BrowserTab.data,
      qt_meta_data_BrowserTab,  qt_static_metacall, 0, 0}
};


const QMetaObject *BrowserTab::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *BrowserTab::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_BrowserTab.stringdata))
        return static_cast<void*>(const_cast< BrowserTab*>(this));
    return QObject::qt_metacast(_clname);
}

int BrowserTab::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}

// SIGNAL 0
void BrowserTab::timerConnectionLost()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}
QT_END_MOC_NAMESPACE
