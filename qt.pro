#-------------------------------------------------
#
# Project created by QtCreator 2018-08-09T13:48:40
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qt
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


INCLUDEPATH += /opt/ros/kinetic/include \
               /home/sky/space/opencv-3.4.1/include/opencv \
               /home/sky/space/opencv-3.4.1/include/opencv2 \
               /home/sky/space/opencv-3.4.1/include

DEPENDPATH +=   /opt/ros/kinetic/include
LIBS += -L/opt/ros/kinetic/lib -lroscpp -lrospack -lpthread -lrosconsole -lrosconsole_log4cxx -lrosconsole_backend_interface \
        -lxmlrpcpp -lroscpp_serialization -lrostime  -lcpp_common  -lroslib -ltf  -lyaml-cpp -lkdl_conversions -lcv_bridge -limage_transport
LIBS += /home/sky/space/opencv-3.4.1/build/lib/libopencv_core.so
LIBS += /home/sky/space/opencv-3.4.1/build/lib/libopencv_highgui.so
LIBS += /home/sky/space/opencv-3.4.1/build/lib/libopencv_imgcodecs.so


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    paintarea.cpp \
    obstacle.cpp \
    modifydialog.cpp \
    robot.cpp \
    pixmapdialog.cpp \
    buildpath.cpp \
    common.cpp \
    greedy.cpp \
    ant_backup.cpp \
    ant.cpp \
    map.cpp \
    pathplanning.cpp \
    camera.cpp \
    camerathread.cpp \
    robotthread.cpp

HEADERS += \
        mainwindow.h \
    paintarea.h \
    obstacle.h \
    modifydialog.h \
    robot.h \
    pixmapdialog.h \
    common.h \
    map.h \
    pathplanning.h \
    camera.h \
    camerathread.h \
    robotthread.h

RESOURCES += \
    resource.qrc
