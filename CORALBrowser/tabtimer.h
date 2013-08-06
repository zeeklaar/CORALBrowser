#ifndef TABTIMER_H
#define TABTIMER_H

#include "lists.h"
#include "timehelper.h"

#include "serializer.h"
#include "parser.h"

#include <QUrl>
#include <QTimer>
#include <QTime>
#include <QList>
#include <QVariantMap>
#include <QDebug>
#include <QFile>
#include <QCoreApplication>

class MainWindow; //Forward Declaration

class TabTimer : public QObject
{
    Q_OBJECT

public:
    TabTimer();

    void startTimingSite(QUrl siteUrl);
    void stopTimingSite(QUrl siteUrl);

    int getTime();

private:
    QTimer* timer;
    QTime* elapsedTime;
    QVariantList* siteList;

    QVariantMap siteToRecord;
    QVariantList pageListToRecord;
    QVariantMap pageToRecord;

    int lastSecondSent; //Used to make sure that we've only sent data once every second

    QFile file;
    bool dataFound;
    QVariantMap existingData;

    void calculateTimeSpent(QVariantList *siteList);
    QVariantList combineData(QVariantList existingData, QVariantList newData);

private slots:
    void recordTime();

signals:
    void connectionLost();
};

#endif // TABTIMER_H
