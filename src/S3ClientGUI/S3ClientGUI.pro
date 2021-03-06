#-------------------------------------------------
#
# Project created by QtCreator 2017-03-27T13:46:41
#
#-------------------------------------------------

QT       += core gui
QT       += concurrent
QT       += sql
win32: QT  += winextras
CONFIG   += c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets



TARGET = S3ClientGUI
TEMPLATE = app

win32: {
  DEFINES += USE_WINDOWS_DLL_SEMANTICS
  DEFINES += USE_IMPORT_EXPORT
  
  INCLUDEPATH += "C:/Program Files/aws-cpp-sdk-all/include"
  LIBS += -L"C:/Program Files/aws-cpp-sdk-all/bin" -laws-cpp-sdk-core -laws-cpp-sdk-s3

  LIBS += -lUser32
}

unix: CONFIG += link_pkgconfig
unix: PKGCONFIG += aws-cpp-sdk-s3
mac: LIBS += -lcurl


SOURCES += main.cpp\
        mainwindow.cpp \
    ../s3util/actions.cpp \
    ../s3util/qs3client.cpp \
    s3treemodel.cpp \
    s3item.cpp \
    qfilesystemview.cpp \
    qtaskmodel.cpp \
    transferwidget.cpp \
    filesystemmodel.cpp \
    driveselectwidget.cpp \
    editaccountdialog.cpp \
    qs3config.cpp \
    helper.cpp


HEADERS  += mainwindow.h \
    ../s3util/qs3client.h \
    ../s3util/actions.h \
    s3treemodel.h \
    s3item.h \
    qfilesystemview.h \
    qtaskmodel.h \
    transferwidget.h \
    filesystemmodel.h \
    driveselectwidget.h \
    editaccountdialog.h \
    qs3config.h \
    helper.h

FORMS    += mainwindow.ui \
    editaccountdialog.ui

DISTFILES += \
    README.md

RESOURCES += \
    resource.qrc

RC_ICONS = images/Main.ico

#for Mac
ICON = images/Main.icns

# Single Application implementation
include(SingleApplication/singleapplication.pri)
DEFINES += QAPPLICATION_CLASS=QApplication
