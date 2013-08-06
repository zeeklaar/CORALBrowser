/*
    This class statically stores the various restriction lists as QVariantLists
*/

#ifndef LISTS_H
#define LISTS_H

#include <QVariant>
#include <QVariantList>
#include <QVariantMap>

class Lists
{

public:
    static QVariantList* DatabaseData;
    static QVariantList* WhiteList;
    static QVariantList* GreenList;
    static QVariantList* GrayList;
    static QVariantList* BlackList;

};

#endif // LISTS_H
