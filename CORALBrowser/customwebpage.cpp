/*
 *This CustomWebPage object is just that. Right now it's just here
 *so that the user agent can be redefined. That way if a site won't play
 *nice because it can't detect the browser, we can just fake it out.
 *Right now we just always mask the browser as Firefox 21 on Windows Blue
*/

#include "customwebpage.h"

CustomWebPage::CustomWebPage(QWidget* parent = 0): QWebPage(parent)
{
}

QString CustomWebPage::userAgentForUrl(const QUrl &url) const
{
    Q_UNUSED(url)
    return "Mozilla/5.0 (Windows NT 6.3; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0";
}
