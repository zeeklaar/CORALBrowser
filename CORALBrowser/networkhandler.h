#ifndef NETWORKHANDLER_H
#define NETWORKHANDLER_H

#include <QTcpSocket>
#include <QObject>

#include "parser.h"

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
