#ifndef NETWORKHANDLER_H
#define NETWORKHANDLER_H

#include <QTcpSocket>
#include <QObject>

#include "parser.h"

/*
 *Network Handler class header.
 *
 *This class is designed to be a static handler class, initiliazed in main.cpp
 *It allows other parts of the program to send and recieve data by accessing
 *its clientSocket.
 *
 *Warning: The ListenThread class is a thread that will constantly send a signal
 *telling the NetworkHandler to read data. The TcpScoket object needs to be in one thread only,
 *so it's kept in the main thread. However, when it's told to read data, it's a slow process that
 *slows down other parts of the GUI.
 *
 *Solution: Create an system that allows NetworkHandler to be in its own thread and make
 *it replace the ListenThread. The hard part is going to be making sure that everything is
 *thread safe, and that data can be handled without worrying about timing.
*/

class NetworkHandler : public QObject
{
    Q_OBJECT

public:
    static NetworkHandler* networkHandler;

    NetworkHandler();
    QTcpSocket* clientSocket;

public slots:
    void checkConnection();

private:
    QByteArray recentData;
    QJson::Parser* parser;

private slots:
    void readData();

signals:
    void attemptLogin();
    void recievedData(QByteArray);

};

#endif // NETWORKHANDLER_H
