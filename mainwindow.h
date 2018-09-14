#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include"paintarea.h"
#include<QHBoxLayout>
#include<QMenu>
#include<QMenuBar>
#include<QAction>
#include<QToolBar>
#include<ros/ros.h>
#include"pixmapdialog.h"
#include"camera.h"


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = 0);
    ~MainWindow();
    void creatMenus();
    void createActions();
    void createToolBars();

private:
    PaintArea *paintArea;
    QMenu *fileMenu;

    QToolBar *fileTool;
    QToolBar *obstacleTool;
    QToolBar *robotTool;
    QToolBar *pathTool;

    QAction *openFileAction;
    QAction *newFileAction;
    QAction *exitAction;
    QAction *saveFileAction;
    QAction *putEllipseAction;
    QAction *putRectangleAction;
    QAction *putLineAction;
    QAction *putRobotAction;
    QAction *buildPathAction;
    QAction *inspectingAction;
    //Camera
    QToolBar *cameraTool;
    QAction *readFrameAction;

    PixmapDialog *pixmapDialog;
    Camera *cameraDialog;


protected slots:
    void ShowShape(int);
//    void setObstacle();
    void setShapeEllipse();
    void setShapeRectangle();
    void setShapeLine();
    void setRobot();
    void showPixmapDialog();
    void saveMap();
    void loadMap();
    void buildPath();
    void inspecting();
    void displayFrame();

};

#endif // MAINWINDOW_H
