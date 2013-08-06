/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.1.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionNew_Tab;
    QAction *actionExit;
    QAction *actionNew_Window;
    QAction *actionShow_Spent_Time;
    QWidget *centralWidget;
    QGridLayout *gridLayout;
    QTabWidget *tabWidget;
    QMenuBar *menuBar;
    QMenu *menuFile;
    QMenu *menuDebug;
    QMenu *connectionIcon;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(889, 566);
        MainWindow->setStyleSheet(QStringLiteral("padding: {0px}"));
        actionNew_Tab = new QAction(MainWindow);
        actionNew_Tab->setObjectName(QStringLiteral("actionNew_Tab"));
        actionExit = new QAction(MainWindow);
        actionExit->setObjectName(QStringLiteral("actionExit"));
        actionNew_Window = new QAction(MainWindow);
        actionNew_Window->setObjectName(QStringLiteral("actionNew_Window"));
        actionShow_Spent_Time = new QAction(MainWindow);
        actionShow_Spent_Time->setObjectName(QStringLiteral("actionShow_Spent_Time"));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        gridLayout = new QGridLayout(centralWidget);
        gridLayout->setSpacing(6);
        gridLayout->setContentsMargins(11, 11, 11, 11);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        tabWidget = new QTabWidget(centralWidget);
        tabWidget->setObjectName(QStringLiteral("tabWidget"));
        tabWidget->setMouseTracking(true);
        tabWidget->setAutoFillBackground(true);
        tabWidget->setStyleSheet(QStringLiteral(""));
        tabWidget->setTabShape(QTabWidget::Rounded);
        tabWidget->setDocumentMode(false);
        tabWidget->setTabsClosable(true);
        tabWidget->setMovable(true);

        gridLayout->addWidget(tabWidget, 0, 0, 1, 1);

        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 889, 22));
        menuFile = new QMenu(menuBar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        menuDebug = new QMenu(menuBar);
        menuDebug->setObjectName(QStringLiteral("menuDebug"));
        connectionIcon = new QMenu(menuBar);
        connectionIcon->setObjectName(QStringLiteral("connectionIcon"));
        QIcon icon;
        icon.addFile(QStringLiteral("../build-CORALBrowser-MSVC_32Bit-Debug/debug/res/images/Offline.png"), QSize(), QIcon::Normal, QIcon::Off);
        connectionIcon->setIcon(icon);
        MainWindow->setMenuBar(menuBar);

        menuBar->addAction(connectionIcon->menuAction());
        menuBar->addAction(menuFile->menuAction());
        menuBar->addAction(menuDebug->menuAction());
        menuFile->addAction(actionNew_Tab);
        menuFile->addAction(actionNew_Window);
        menuFile->addSeparator();
        menuFile->addAction(actionExit);
        menuDebug->addAction(actionShow_Spent_Time);

        retranslateUi(MainWindow);

        tabWidget->setCurrentIndex(-1);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "CORAL Browser", 0));
        actionNew_Tab->setText(QApplication::translate("MainWindow", "New Tab", 0));
        actionExit->setText(QApplication::translate("MainWindow", "Exit", 0));
        actionNew_Window->setText(QApplication::translate("MainWindow", "New Window", 0));
        actionShow_Spent_Time->setText(QApplication::translate("MainWindow", "Show Spent Time", 0));
        menuFile->setTitle(QApplication::translate("MainWindow", "File", 0));
        menuDebug->setTitle(QApplication::translate("MainWindow", "Debug", 0));
        connectionIcon->setTitle(QApplication::translate("MainWindow", "\"", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
