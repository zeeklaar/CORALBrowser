#ifndef BROWSERTAB_H
#define BROWSERTAB_H

#include "tabtimer.h"

#include <QObject>
#include <QDebug>

#include <QWebView>
#include <QNetworkDiskCache>
#include <QHBoxLayout>
#include <QPushButton>
#include <QLabel>
#include <QLineEdit>
#include <QMovie>

class MainWindow; //Forward Declaration

class BrowserTab : public QObject
{
    Q_OBJECT

public:
    BrowserTab(MainWindow *mainWin);

    void generateUI();

private:
    bool containsTLD(QString url);
    QString getDomain(QString url);
    QString checkUrl(QString url);

    MainWindow* mainWindow;

    QWebView* webView;
    QFrame* controlFrame;
    QHBoxLayout* controlLayout;
    QPushButton* backButton;
    QPushButton* forwardButton;
    QPushButton* refreshButton;
    QLabel* loadingLabel;
    QLineEdit* urlBar;

    QMovie* loadingGif;

    TabTimer* tabTimer;

    QString currentRestrictionLevel;
    QString currentUrl;
    QString homepage;

private slots:
    void backButtonClicked();
    void forwardButtonClicked();
    void refreshButtonClicked();
    void urlChanged(QUrl url);
    void changeUrl();
    void startedLoading();
    void stoppedLoading();
    void alertDisconnection();
    void restrictUrl(QUrl url);

signals:
    void timerConnectionLost();
};

#endif // BROWSERTAB_H
