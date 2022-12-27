#include "mainwindow.h"
#include "ui_mainwindow.h"

#include<opencv2/highgui.hpp>
#include<opencv2/imgproc/imgproc.hpp>
#include<opencv2/opencv.hpp>

#include<qmessagebox.h>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pushButton_clicked()
{
    cv::Mat test = cv::imread("/Users/anupdas/Desktop/79948999_10157353157999681_3069770141865607168_n.jpg",1);

    if(!test.data)
    {
        QMessageBox msg;
        msg.setText("Could not load image");
        msg.exec();
    }

   // cv::namedWindow("test",cv::WINDOW_AUTOSIZE);
    cv::imshow("test image",test);
}

