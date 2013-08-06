/*
 * This class is here to provide an interface to a TCPsocket that can be accessed
 * anywhere without worrying about threads. The ListenThread needs this to properly
 * read data without worrying about being in another thread
*/

#include "mainwindow.h"
#include "networkhandler.h"

NetworkHandler::NetworkHandler()
{
    clientSocket = new QTcpSocket();
    parser = new QJson::Parser();
}

void NetworkHandler::checkConnection()
{

    bool previousConnection = MainWindow::connected;

    if(!MainWindow::connected){
        QHostAddress addr("74.69.230.160");
        clientSocket->connectToHost(addr,quint16(3000));

        connect(this->clientSocket, SIGNAL(readyRead()), this, SLOT(readData()));
    }


    //Waits for server connection
    if(clientSocket->waitForConnected(100))
    {
        MainWindow::connected = true;

        if(previousConnection == false && MainWindow::connected == true)
        {
            emit attemptLogin();
        }
    }
    else
    {
        MainWindow::connected = false;
        qDebug() << "cannot connect";
    }
}

void NetworkHandler::readData()
{
    QByteArray incomingData = clientSocket->readAll();

    //This part will automatically check all incoming data to see if it's list data. Just to avoid another connect
    QVariantList incomingJSON = parser->parse(incomingData).toList();

    //If we've retrieved new Lists from the database, store them in the static list
    if(incomingData != "" && &incomingJSON != Lists::DatabaseData)
    {
        Lists::DatabaseData = &incomingJSON;

        //Parse the JSON down into the individual lists
        (*Lists::WhiteList) = ((incomingJSON[0].toMap())["data"].toList());
        (*Lists::GreenList) = ((incomingJSON[1].toMap())["data"].toList());
        (*Lists::GrayList) = ((incomingJSON[2].toMap())["data"].toList());
        (*Lists::BlackList) = ((incomingJSON[3].toMap())["data"].toList());
    }
    else //If it's not the list data, we can emit to everything else that we found something
    {
        if(incomingData != ""){
            emit recievedData(incomingData);
        }
    }
}

