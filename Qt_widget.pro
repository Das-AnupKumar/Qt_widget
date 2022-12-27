QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0



SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target



win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../opencv-4.5.5/opencv-build/lib/release/ -lopencv_world.4.5.5
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../opencv-4.5.5/opencv-build/lib/debug/ -lopencv_world.4.5.5
else:unix: LIBS += -L$$PWD/../../../opencv-4.5.5/opencv-build/lib/ -lopencv_world.4.5.5

INCLUDEPATH += $$PWD/../../../../../usr/local/include/opencv4
DEPENDPATH += $$PWD/../../../../../usr/local/include/opencv4
