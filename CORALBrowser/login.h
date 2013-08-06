#ifndef LOGIN_H
#define LOGIN_H

#include <QWidget>
#include <QDebug>
#include <QCryptographicHash>
#include <QThread>
#include <QVariant>
#include <QVariantMap>
#include <QVariantList>
#include <QMessageBox>

#include "serializer.h"

namespace Ui {
class Login;
}

class ListenThread;  //Forward Declaration

/*
 *Login Class (Form Class)
*/

class Login : public QWidget
{
    Q_OBJECT
    
public:
    explicit Login(QWidget *parent = 0);
    ~Login();

    void sendLoginData(QString username, QString passhash);
    
private:
    Ui::Login *ui;
    QJson::Serializer* serializer;
    QVariantMap loginData;

private slots:
    void login();
    void handleResponse(QByteArray response);

signals:
    void loginComplete(QVariantMap);
    void writeData(QByteArray);
};

#endif // LOGIN_H
