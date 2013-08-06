#include "login.h"
#include "ui_login.h"

#include "mainwindow.h"
#include "networkhandler.h"

Login::Login(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Login)
{
    ui->setupUi(this);

    serializer = new QJson::Serializer();

    //Make it always on top and make it unable to be closed
    setWindowFlags(Qt::WindowStaysOnTopHint | Qt::Tool);

    connect(ui->loginButton, SIGNAL(clicked()), this, SLOT(login()));
    connect(NetworkHandler::networkHandler, SIGNAL(recievedData(QByteArray)), this, SLOT(handleResponse(QByteArray)));
}

Login::~Login()
{
    delete ui;
}


//Hashes the password and sends the info to the server for authentication
//Returns the header to pass to the server for identification
void Login::login()
{
    qDebug() << MainWindow::connected;

    //If we're connected, log in, if not, ask the user to connect to the server
    if(MainWindow::connected){
        ui->progressLabel->setText("Attempting Login");

        //Get username and password, then hash the password
        QString userID = ui->userEdit->text();
        QString passwordText = ui->passwordEdit->text();
        QString passwordHash = QString(QCryptographicHash::hash(passwordText.toLatin1(),QCryptographicHash::Md5).toHex()); //We want the MD5 hash because that's what's stored serverside

        sendLoginData(userID, passwordHash);
    }
    else
    {
        QMessageBox::information(NULL, "Can't Connect", "Please Connect To Server!");
    }
}

//Actually send out the login data to the server
void Login::sendLoginData(QString userID, QString passwordHash)
{
    qDebug() << "ID: " << userID << " Hash: " << passwordHash;

    //Pack login info into a nice JSON bundle
    QVariantMap baseData;
    loginData;
    loginData.insert("userID", QVariant(userID));
    loginData.insert("passwordHash", QVariant(passwordHash));
    baseData.insert("Type", QVariant("Login"));
    baseData.insert("Data", loginData);

    bool ok = false;

    QByteArray data = serializer->serialize(baseData, &ok);

    if(!ok)
    {
        ui->progressLabel->setText("Error Logging In - JSON");
        return;
    }

    quint64 error = NetworkHandler::networkHandler->clientSocket->write(data, data.size());
    if(error == -1)
    {
        qDebug() << "Error writing data";
    }
}

void Login::handleResponse(QByteArray response)
{
    qDebug() << response;

    if(response == "okay")
    {
        //Send back a map of the data we want to write
        emit loginComplete(loginData);

        this->close();
    }
    else if(response == "bad")
    {
        ui->progressLabel->setText("Sorry, bad username or password.");
    }
}


