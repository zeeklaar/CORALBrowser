/********************************************************************************
** Form generated from reading UI file 'reconnectiondialog.ui'
**
** Created by: Qt User Interface Compiler version 5.1.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_RECONNECTIONDIALOG_H
#define UI_RECONNECTIONDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_ReconnectionDialog
{
public:
    QLabel *detailsLabel;
    QPushButton *quitButton;
    QLabel *reconnectingLabel;

    void setupUi(QWidget *ReconnectionDialog)
    {
        if (ReconnectionDialog->objectName().isEmpty())
            ReconnectionDialog->setObjectName(QStringLiteral("ReconnectionDialog"));
        ReconnectionDialog->resize(400, 140);
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(ReconnectionDialog->sizePolicy().hasHeightForWidth());
        ReconnectionDialog->setSizePolicy(sizePolicy);
        ReconnectionDialog->setMinimumSize(QSize(400, 140));
        ReconnectionDialog->setMaximumSize(QSize(400, 140));
        detailsLabel = new QLabel(ReconnectionDialog);
        detailsLabel->setObjectName(QStringLiteral("detailsLabel"));
        detailsLabel->setGeometry(QRect(10, 20, 381, 21));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Preferred);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(detailsLabel->sizePolicy().hasHeightForWidth());
        detailsLabel->setSizePolicy(sizePolicy1);
        QFont font;
        font.setPointSize(11);
        detailsLabel->setFont(font);
        quitButton = new QPushButton(ReconnectionDialog);
        quitButton->setObjectName(QStringLiteral("quitButton"));
        quitButton->setGeometry(QRect(300, 100, 75, 23));
        reconnectingLabel = new QLabel(ReconnectionDialog);
        reconnectingLabel->setObjectName(QStringLiteral("reconnectingLabel"));
        reconnectingLabel->setGeometry(QRect(20, 100, 211, 16));

        retranslateUi(ReconnectionDialog);

        QMetaObject::connectSlotsByName(ReconnectionDialog);
    } // setupUi

    void retranslateUi(QWidget *ReconnectionDialog)
    {
        ReconnectionDialog->setWindowTitle(QApplication::translate("ReconnectionDialog", "Lost Connection To Server", 0));
        detailsLabel->setText(QApplication::translate("ReconnectionDialog", "Sorry! CORAL Browser has lost connection to the server. ", 0));
        quitButton->setText(QApplication::translate("ReconnectionDialog", "Quit", 0));
        reconnectingLabel->setText(QApplication::translate("ReconnectionDialog", "Reconnecting...", 0));
    } // retranslateUi

};

namespace Ui {
    class ReconnectionDialog: public Ui_ReconnectionDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_RECONNECTIONDIALOG_H
