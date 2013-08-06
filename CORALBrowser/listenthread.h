#ifndef LISTENTHREAD_H
#define LISTENTHREAD_H

#include "parser.h"

#include <QThread>
#include <QObject>
#include <QTcpSocket>
#include <QHostAddress>

#include "lists.h"

class ListenThread : public QThread
{
    Q_OBJECT
public:
    static ListenThread* listenThread;
    QTcpSocket* clientSocket;

private:
    void run();
    QJson::Parser* parser;

signals:
    void tryConnection();
};

#endif // LISTENTHREAD_H
