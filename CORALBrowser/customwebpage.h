#ifndef CUSTOMWEBPAGE_H
#define CUSTOMWEBPAGE_H

#include <QWebPage>

class CustomWebPage : public QWebPage
{
public:
    CustomWebPage(QWidget* parent);

    QString userAgentForUrl(const QUrl &url) const;
};

#endif // CUSTOMWEBPAGE_H
