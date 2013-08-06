/*
 * Application entry point
 * This class starts up the QApplication,
 * shows the first main window
 * and setups a thread to listen on the network for new info
*/

#include "mainwindow.h"
#include "listenthread.h"
#include "networkhandler.h"

#include <QApplication>

//Defining Static Members
ListenThread* ListenThread::listenThread = new ListenThread();
NetworkHandler* NetworkHandler::networkHandler = new NetworkHandler();
bool MainWindow::connected = false;
bool MainWindow::loggingIn = false;
QString MainWindow::loginUser = "";
QString MainWindow::loginPass = "";

QVariantList* Lists::DatabaseData = new QVariantList();
QVariantList* Lists::WhiteList = new QVariantList();
QVariantList* Lists::GreenList = new QVariantList();
QVariantList* Lists::GrayList = new QVariantList();
QVariantList* Lists::BlackList = new QVariantList();

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    //Setup the listThread; in main because we only want it to start once
    ListenThread::listenThread->start();

    MainWindow w;
    w.show();

    return a.exec();
}
