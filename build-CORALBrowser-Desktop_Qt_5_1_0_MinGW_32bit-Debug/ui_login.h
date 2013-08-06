/********************************************************************************
** Form generated from reading UI file 'login.ui'
**
** Created by: Qt User Interface Compiler version 5.1.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_LOGIN_H
#define UI_LOGIN_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Login
{
public:
    QVBoxLayout *verticalLayout_5;
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *userLayout;
    QLabel *userLabel;
    QLineEdit *userEdit;
    QHBoxLayout *passwordLayout;
    QLabel *passwordLabel;
    QLineEdit *passwordEdit;
    QHBoxLayout *loginLayout;
    QLabel *progressLabel;
    QSpacerItem *horizontalSpacer;
    QPushButton *loginButton;

    void setupUi(QWidget *Login)
    {
        if (Login->objectName().isEmpty())
            Login->setObjectName(QStringLiteral("Login"));
        Login->resize(414, 139);
        verticalLayout_5 = new QVBoxLayout(Login);
        verticalLayout_5->setObjectName(QStringLiteral("verticalLayout_5"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        userLayout = new QHBoxLayout();
        userLayout->setObjectName(QStringLiteral("userLayout"));
        userLabel = new QLabel(Login);
        userLabel->setObjectName(QStringLiteral("userLabel"));
        userLabel->setMinimumSize(QSize(60, 0));

        userLayout->addWidget(userLabel);

        userEdit = new QLineEdit(Login);
        userEdit->setObjectName(QStringLiteral("userEdit"));

        userLayout->addWidget(userEdit);


        verticalLayout_2->addLayout(userLayout);

        passwordLayout = new QHBoxLayout();
        passwordLayout->setObjectName(QStringLiteral("passwordLayout"));
        passwordLabel = new QLabel(Login);
        passwordLabel->setObjectName(QStringLiteral("passwordLabel"));
        passwordLabel->setMinimumSize(QSize(60, 0));

        passwordLayout->addWidget(passwordLabel);

        passwordEdit = new QLineEdit(Login);
        passwordEdit->setObjectName(QStringLiteral("passwordEdit"));
        passwordEdit->setEchoMode(QLineEdit::Password);

        passwordLayout->addWidget(passwordEdit);


        verticalLayout_2->addLayout(passwordLayout);

        loginLayout = new QHBoxLayout();
        loginLayout->setObjectName(QStringLiteral("loginLayout"));
        progressLabel = new QLabel(Login);
        progressLabel->setObjectName(QStringLiteral("progressLabel"));

        loginLayout->addWidget(progressLabel);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        loginLayout->addItem(horizontalSpacer);

        loginButton = new QPushButton(Login);
        loginButton->setObjectName(QStringLiteral("loginButton"));
        loginButton->setMaximumSize(QSize(75, 16777215));

        loginLayout->addWidget(loginButton);


        verticalLayout_2->addLayout(loginLayout);


        verticalLayout_5->addLayout(verticalLayout_2);


        retranslateUi(Login);

        QMetaObject::connectSlotsByName(Login);
    } // setupUi

    void retranslateUi(QWidget *Login)
    {
        Login->setWindowTitle(QApplication::translate("Login", "Form", 0));
        userLabel->setText(QApplication::translate("Login", "User ID:", 0));
        passwordLabel->setText(QApplication::translate("Login", "Password:", 0));
        progressLabel->setText(QString());
        loginButton->setText(QApplication::translate("Login", "Login", 0));
    } // retranslateUi

};

namespace Ui {
    class Login: public Ui_Login {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_LOGIN_H
