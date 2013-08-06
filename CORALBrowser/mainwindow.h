#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "browsertab.h"
#include "listenthread.h"
#include "login.h"

#include <QMainWindow>
#include <QFile>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT
    
public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    
    static bool connected;
    static bool loggingIn;
    static QString loginUser;
    static QString loginPass;

    Ui::MainWindow *ui;

private:
    QFile* loginFile;

    void updateConnectionIcon();
    void attemptingLogin();

private slots:
    void closeTab(int index);
    void newTab();
    void newWindow();
    void exit();
    void logOut();
    void attemptReconnect();
    void loginComplete(QVariantMap loginData);
    void checkLogin();
};

#endif // MAINWINDOW_H
