######################################################################
# Automatically generated by qmake (3.0) ?? ?? 18 09:29:28 2019
######################################################################

TEMPLATE = app
TARGET = chip
CONFIG(debug, debug|release){
MOC_DIR = debug/moc
OBJECTS_DIR = debug/obj
RCC_DIR = debug/moc
}
CONFIG(release, debug|release){
MOC_DIR = release/moc
OBJECTS_DIR = release/obj
RCC_DIR = release/moc
}

INCLUDEPATH += .
INCLUDEPATH += C:/Qt/Qt5.5.1/5.5/msvc2010/include/QtPrintSupport
INCLUDEPATH += C:/Qt/Qt5.5.1/5.5/msvc2010/include/QtOpenGL
INCLUDEPATH += C:/Qt/Qt5.5.1/5.5/msvc2010/include/QtWidgets

# Input
HEADERS += chip.h mainwindow.h view.h
SOURCES += chip.cpp main.cpp mainwindow.cpp view.cpp
RESOURCES += images.qrc

QT += widgets opengl printsupport
CONFIG(debug, debug|release)：LIBS += -LC:/Qt/Qt5.5.1/5.5/msvc2010/lib -lqtmaind -lQt5Cored \
-lQt5Widgetsd  -lQt5Guid 

CONFIG(release, debug|release)：LIBS += -LC:/Qt/Qt5.5.1/5.5/msvc2010/lib -lqtmain -lQt5Core \
-lQt5Widgets  -lQt5Gui 