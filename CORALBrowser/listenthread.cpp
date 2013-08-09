/*
 * This class is a simple thread to continually make sure that the rest of the application knows if it's online or not
*/

#include "listenthread.h"
#include "mainwindow.h"
#include "networkhandler.h"

//This function will constantly listen for the server sending new data
void ListenThread::run()
{
    connect(this, SIGNAL(tryConnection()), NetworkHandler::networkHandler, SLOT(checkConnection()));

    while(true){

        this->sleep(1);

        //emit a signal to tell the NetworkHandler to check the connection
        //emit tryConnection();
    }
}

