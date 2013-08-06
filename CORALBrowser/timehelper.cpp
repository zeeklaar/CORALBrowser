/*
 * This static class is here to help with serializing and handling time values.
 * Because a lot of this application has to do with timing, converting time formats
 * and editing time values is very common. This class can:
 *
 * Convert millisceonds to hours, minutes, seconds
 * Convert a time string in HMS format to milliseconds
*/

#include "timehelper.h"

QString TimeHelper::millisecondsToTime(int milliseconds)
{
    //Copy the inputed time to a new variable
    int ms = milliseconds;

    int hours;
    int minutes;
    int seconds;

    //Run the conversion
    hours = ms / (1000 * 60 * 60);
    minutes = (ms - (hours * 1000 * 60 * 60)) / (1000 * 60);
    seconds = (ms - (minutes * 1000 * 60 ) - (hours * 1000 * 60 * 60)) / (1000);
    ms = (milliseconds - (seconds * 1000) - (minutes * 1000 * 60 ) - (hours * 1000 * 60 * 60));

    //Format the calculated values
    QTime time;
    time.setHMS(hours, minutes, seconds, ms);

    //Return the time
    return time.toString("hh:mm:ss:zzz");
}

int TimeHelper::timeToMilliseconds(QString time)
{
    if(time != "TIMER VALUE"){

        QTime timeObject = QTime::fromString(time, "hh:mm:ss:zzz");

        int hourMS = timeObject.hour() * 60 * 60 * 1000;
        int minuteMS = timeObject.minute() * 60 * 1000;
        int secondMS = timeObject.second() * 1000;
        int MS = timeObject.msec();

        int totalMS = hourMS + minuteMS + secondMS + MS;

        return totalMS;
    }
    else
    {
        return 0;
    }
}
