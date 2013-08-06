#ifndef TIMEHELPER_H
#define TIMEHELPER_H

#include <QDebug>

#include <QTime>

class TimeHelper
{
public:
    static QString millisecondsToTime(int milliseconds);
    static int timeToMilliseconds(QString time);

};

#endif // TIMEHELPER_H
