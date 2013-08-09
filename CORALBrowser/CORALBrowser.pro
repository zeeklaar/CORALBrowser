#-------------------------------------------------
#
# Project created by QtCreator 2013-06-25T08:23:27
#
#-------------------------------------------------

QT       += core gui opengl webkitwidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = CORALBrowser
TEMPLATE = app

SOURCES += main.cpp\
    mainwindow.cpp \
    browsertab.cpp \
    customwebpage.cpp \
    tabtimer.cpp \
    timehelper.cpp \
    login.cpp \
    listenthread.cpp \
    networkhandler.cpp

HEADERS  += mainwindow.h \
    browsertab.h \
    customwebpage.h \
    tabtimer.h \
    timehelper.h \
    lists.h \
    login.h \
    listenthread.h \
    networkhandler.h

FORMS    += mainwindow.ui \
    login.ui

#External Libraries

INCLUDEPATH += $$_PRO_FILE_PWD_/qjson/include

#win32:LIBS += -L$$_PRO_FILE_PWD_/qjson/win32/mingw/lib/ -lqjson
win32:LIBS += -L$$_PRO_FILE_PWD_/qjson/win32/msvc/lib/ -lqjson
macx:LIBS += -L$$_PRO_FILE_PWD_/qjson/macx/lib/ -lqjson
