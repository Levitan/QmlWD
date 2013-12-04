#-------------------------------------------------
#
# Project created by QtCreator 2013-12-03T20:54:11
#
#-------------------------------------------------

QT       += core gui declarative

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qmlwd
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

OTHER_FILES += \
    qml/QuickPG/Panel.qml \
    qml/QuickPG/Close.qml \
    qml/QuickPG/Minimize.qml \
    qml/QuickPG/Maximize.qml \
    qml/QuickPG/Decoration.qml \
    qml/QuickPG/ui.qml

RESOURCES += \
    res.qrc
