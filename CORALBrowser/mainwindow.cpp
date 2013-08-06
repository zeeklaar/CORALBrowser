/*
*This main window class takes care of some of the basic windowing.
*It controls the menu bar actions, as well as creation and deletion
*of web browser tabs.
*/

#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "networkhandler.h"

#include <QTcpSocket>
#include <QHostAddress>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    newTab(); //Start a new tab off the bat

    //Remove some margins
    centralWidget()->layout()->setContentsMargins(0,0,0,0);

    //Setup keyboard shortcuts for actions
    ui->actionNew_Tab->setShortcut(Qt::ControlModifier + Qt::Key_T);
    ui->actionNew_Window->setShortcut(Qt::ControlModifier + Qt::Key_N);

    //Connect some basic actions to slots
    connect(ui->tabWidget, SIGNAL(tabCloseRequested(int)), this, SLOT(closeTab(int)));
    connect(ui->actionNew_Tab, SIGNAL(triggered()), this, SLOT(newTab()));
    connect(ui->actionNew_Window, SIGNAL(triggered()), this, SLOT(newWindow()));
    connect(ui->actionExit, SIGNAL(triggered()), this, SLOT(exit()));
    connect(ui->actionLog_Out, SIGNAL(triggered()), this, SLOT(logOut()));
    connect(NetworkHandler::networkHandler, SIGNAL(attemptLogin()), this, SLOT(checkLogin()));

    //Attempt to connect to a server
    updateConnectionIcon();
}

MainWindow::~MainWindow()
{
    //If we close the window with an established connection, than we want to remove the cached data
    //as it's already on the server and we don't want to throw it up again
    if(connected)
    {
        QFile file(QCoreApplication::applicationDirPath() + "/res/data/offlineHistory.json");
        file.resize(0);
    }

    delete loginFile;

    delete ui;
}

/*
PRIVATE FUNCTIONS
*/

void MainWindow::updateConnectionIcon()
{
    qDebug() << connected;

    if(connected)
    {
        QIcon onlineIcon(QCoreApplication::applicationDirPath() + "/res/images/Online.png");
        ui->connectionIcon->setIcon(onlineIcon);
    }
    else
    {
        QPixmap offlineIcon(QCoreApplication::applicationDirPath() + "/res/images/Offline.png");
        ui->connectionIcon->setIcon(offlineIcon);
    }

}

//Create a Login Window to try to login
void MainWindow::attemptingLogin()
{
    //If we end up connected to the network, prompt for a login
    Login* loginForm = new Login();
    connect(loginForm, SIGNAL(loginComplete(QVariantMap)), this, SLOT(loginComplete(QVariantMap)));

    loggingIn = true;

    //If we don't have a stored username, then prompt for one, otherwise we'll send the stored data without user input
    if(loginUser == "")
    {
        loginForm->show();
    }
    else
    {
        loginForm->sendLoginData(loginUser, loginPass);
    }
}

/*
    Private Slots
*/

void MainWindow::closeTab(int index)
{
    //Don't close it if there are no more tabs
    if(ui->tabWidget->count() > 1){
        //We need to delete the widget that way all the memory in that tab will get freed up
        delete(ui->tabWidget->widget(index));
    }

}

void MainWindow::newTab()
{
    //Create a new widget for the tab and set its layout
    QWidget* newTabWidget = new QWidget();
    newTabWidget->setLayout(new QVBoxLayout());
    newTabWidget->layout()->setContentsMargins(0,0,0,0);

    ui->tabWidget->addTab(newTabWidget, "New Tab");
    ui->tabWidget->setCurrentIndex(ui->tabWidget->count() - 1); //focus on the newly created tab

    BrowserTab* browserTab = new BrowserTab(this);

    browserTab->generateUI();

    //Each browserTab needs to report if the connection goes out
    connect(browserTab, SIGNAL(timerConnectionLost()), this, SLOT(attemptReconnect()));
}

void MainWindow::newWindow()
{
    MainWindow* newWin = new MainWindow();
    newWin->show();
}

void MainWindow::exit()
{
    QCoreApplication::exit();
}

void MainWindow::logOut()
{
    loginUser = "";
    loginPass = "";

    //Clear the login file
    loginFile->resize(0);

    attemptingLogin();
}

//Actual connection attempt is made periodically in the network handler
void MainWindow::attemptReconnect()
{
    updateConnectionIcon();
}

void MainWindow::checkLogin()
{
    qDebug() << "Checking Login";

    //If we don't have any recorded login info, then we'll open up a login form, if we do, then we'll read it and use it
    loginFile = new QFile(QCoreApplication::applicationDirPath() + "/res/data/login.json");
    loginFile->open(QFile::ReadWrite);
    QTextStream inputStream(loginFile);

    QString jsonString = inputStream.readAll();

    if(jsonString != "")
    {
        QJson::Parser parser;
        QVariantMap loginMap = parser.parse(jsonString.toLatin1()).toMap();

        loginUser = loginMap["userID"].toString();
        loginPass = loginMap["passwordHash"].toString();
    }

    attemptingLogin();

}

//Store the user header
void MainWindow::loginComplete(QVariantMap loginData)
{
    qDebug() << "Login Complete";

    loginUser = loginData["userID"].toString();

    connected = true;
    loggingIn = false;

    QJson::Serializer serializer;
    loginFile->resize(0); //Clear the file before writing
    QByteArray loginJSON = serializer.serialize(loginData);
    QTextStream loginOut(loginFile);

    loginOut << loginJSON;

    updateConnectionIcon();
}
