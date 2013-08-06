/*
 *This is a custom browser tab object that handles generating
 *the UI for each tab the browser can produce. The idea is that
 *all UI elements are auto generated from each instance of this class.
 *Because this class houses the QWebView object, it is also responsible
 *for controlling what URLs are allowed.
 *
 *TODO: Read in white/black/etc. lists from a file and then restrict the
 *web browser respectively. We don't want each tab to try to open the file,
 *so that will have to be done by the main window, and then the list data
 *will just get passed to each tab.
*/

#include "browsertab.h"

#include "mainwindow.h"
#include "ui_mainwindow.h"

#include "customwebpage.h"

BrowserTab::BrowserTab(MainWindow *mainWin) : QObject(mainWin)
{
    mainWindow = mainWin;

    currentRestrictionLevel = "white";
    currentUrl = "http://www.google.com";
    homepage = "http://www.google.com";

    tabTimer = new TabTimer();
}

/*
    Public Functions
*/

void BrowserTab::generateUI()
{
    //This is the parent widget to all objects created here
    QWidget* currentTabWidget = mainWindow->ui->tabWidget->currentWidget();

    QString baseDir = QCoreApplication::applicationDirPath();

    //Gather and store in memeory the images for the buttons
    QIcon backIcon(baseDir+"/res/images/BackArrow.png");
    QIcon forwardIcon(baseDir+"/res/images/ForwardArrow.png");
    QIcon refreshIcon(baseDir+"/res/images/RefreshArrow.png");
    loadingGif = new QMovie(baseDir + "/res/images/Loading.gif");
    loadingGif->setScaledSize(QSize(20,20));

    webView = new QWebView(currentTabWidget);
    webView->setPage(new CustomWebPage(currentTabWidget));
    webView->setUrl(QUrl("http://www.google.com"));
    webView->settings()->setAttribute(QWebSettings::PluginsEnabled, true);
    webView->page()->setLinkDelegationPolicy(QWebPage::DelegateAllLinks); //THIS IS REQUIRED FOR THE LINKCLICKED SIGNAL TO FIRE!
    //TODO: Reimplement the context menu so that events will get handled

    //Setup the webView to use a cache
    QNetworkDiskCache* diskCache = new QNetworkDiskCache(this);
    diskCache->setCacheDirectory(QCoreApplication::applicationDirPath() + "/cache/");
    webView->page()->networkAccessManager()->setCache(diskCache);


    controlFrame = new QFrame(currentTabWidget);
    controlFrame->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Fixed);
    controlFrame->setMinimumHeight(40);
    controlFrame->setMaximumHeight(40);

    controlLayout = new QHBoxLayout(controlFrame);

    backButton = new QPushButton(backIcon, "", currentTabWidget);
    backButton->setIconSize(QSize(28,28));
    backButton->setSizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
    backButton->setMinimumSize(30,30);
    backButton->setMaximumSize(30,30);

    forwardButton = new QPushButton(forwardIcon, "", currentTabWidget);
    forwardButton->setIconSize(QSize(19,19));
    forwardButton->setSizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
    forwardButton->setMinimumSize(20,20);
    forwardButton->setMaximumSize(20,20);

    urlBar = new QLineEdit(currentTabWidget);

    loadingLabel = new QLabel("", currentTabWidget);
    loadingLabel->setSizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
    loadingLabel->setMinimumSize(20,20);
    loadingLabel->setMaximumSize(20,20);
    loadingLabel->setMovie(loadingGif);

    refreshButton = new QPushButton(refreshIcon, "", currentTabWidget);
    refreshButton->setIconSize(QSize(28, 28));
    refreshButton->setSizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
    refreshButton->setMinimumSize(30,30);
    refreshButton->setMaximumSize(30,30);

    //Loading all control elements to the control layout
    controlLayout->addWidget(backButton);
    controlLayout->addWidget(forwardButton);
    controlLayout->addWidget(urlBar);
    controlLayout->addWidget(loadingLabel);
    controlLayout->addWidget(refreshButton);

    //Add everything into the actual main window layout
    controlFrame->setLayout(controlLayout);
    currentTabWidget->layout()->addWidget(controlFrame);
    currentTabWidget->layout()->addWidget(webView);

    //connect all signals and slots
    connect(backButton, SIGNAL(clicked()), this, SLOT(backButtonClicked()));
    connect(forwardButton, SIGNAL(clicked()), this, SLOT(forwardButtonClicked()));
    connect(refreshButton, SIGNAL(clicked()), this, SLOT(refreshButtonClicked()));
    connect(webView, SIGNAL(urlChanged(QUrl)), this, SLOT(urlChanged(QUrl)));
    connect(urlBar, SIGNAL(returnPressed()), this, SLOT(changeUrl()));
    connect(webView, SIGNAL(loadStarted()), this, SLOT(startedLoading()));
    connect(webView, SIGNAL(loadFinished(bool)), this, SLOT(stoppedLoading()));
    connect(webView, SIGNAL(linkClicked(QUrl)), this, SLOT(restrictUrl(QUrl)));
    connect(tabTimer, SIGNAL(connectionLost()), this, SLOT(alertDisconnection()));
}

/*
    Private Slots
*/

void BrowserTab::backButtonClicked()
{
    webView->back();
}

void BrowserTab::forwardButtonClicked()
{
    webView->forward();
}

void BrowserTab::refreshButtonClicked()
{
    webView->reload();
}

void BrowserTab::urlChanged(QUrl url)
{
    urlBar->setText(url.toString());
    tabTimer->startTimingSite(url);
}

void BrowserTab::changeUrl()
{
    QString destination = urlBar->text();

    QString toSet = "";

    //If it's a web URL, set the url in the web view, if not, then query a search on a search engine
    if( !(destination.startsWith("http://") || destination.startsWith("https://")) && containsTLD(destination)) //TLD = Top Level Domain
    {
        toSet = "http://" + destination;
    }
    else if((destination.startsWith("http://") || destination.startsWith("https://")) && containsTLD(destination))
    {
        toSet = destination;
    }
    else
    {
        toSet = "https://google.com/?q=" + destination + "#output=search";
    }

    //Will set the URL appropriately after determining how to restrict it
    restrictUrl(QUrl(toSet));
}

//Alert the main window that there has been a disconnection
void BrowserTab::alertDisconnection()
{
    emit timerConnectionLost();
}

void BrowserTab::startedLoading()
{
    loadingGif->start();
}
void BrowserTab::stoppedLoading()
{
    loadingGif->stop();
    loadingGif->jumpToFrame(0); //The first frame of loading gif is blank; jump to that

    //Set the tab title to the title of the page
    mainWindow->ui->tabWidget->setTabText(mainWindow->ui->tabWidget->currentIndex(), webView->title());
}


//Filter out what sites are allowed to be visited
//NOTE: Doesn't work if a link from a search engine or an image is clicked
void BrowserTab::restrictUrl(QUrl url)
{
    QString destination = url.toString();

    QString restrictionLevel = checkUrl(destination);

    bool restricted = false;

    if(restrictionLevel != "white") //If the site is whitelisted, we don't care
    {
        if(restrictionLevel == "black")
        {
            restricted = true;
            destination = homepage;
        }

        //If the current page is restricted to green, return if the new site isn't in the same domain
        if(currentRestrictionLevel == "green" && !currentUrl.contains(getDomain(destination)))
        {
            restrictionLevel = "white"; //going back to the homepages, lift restrictions
            restricted = true;
            destination = homepage;
        }

        if(currentRestrictionLevel == "gray")
        {
            restrictionLevel = "white"; //going back to the homepages, lift restrictions
            restricted = true;
            destination = homepage;
        }
    }

    currentRestrictionLevel = restrictionLevel;
    currentUrl = destination;

    webView->setUrl(QUrl(destination));
}

/*
    Private Functions
*/

//This checks a string for a top level domain ending
bool BrowserTab::containsTLD(QString url)
{
    if(url.contains(".com") ||
            url.contains(".org") ||
            url.contains(".edu") ||
            url.contains(".gov") ||
            url.contains(".info") ||
            url.contains(".net") ||
            url.contains(".co") ||
            url.contains(".tv") ||
            url.contains(".us") ||
            url.contains(".uk") ||
            url.contains(".me") ||
            url.contains(".tel") ||
            url.contains(".ru")
        )
    {
        return true;
    }
    else
    {
        return false;
    }
}

//Returns the domain of an entire url; example: returns google from http://www.google.com/?q=search#output
//Assumses that there is a top level domain; example: '.com'
QString BrowserTab::getDomain(QString url)
{
    int startIndex;
    int endIndex;

    QString domain;

    if(url.contains("http://"))
    {
        startIndex = 7;
    }
    else if(url.contains("https://"))
    {
        startIndex = 8;
    }
    else
    {
        startIndex = 0;
    }

    if(url.contains("www."))
    {
        startIndex += 4;
    }

    domain = url.mid(startIndex);
    domain = domain.mid(0,domain.indexOf("/"));

    endIndex = domain.lastIndexOf(".");

    domain = domain.mid(0, endIndex);

    return domain;
}

//Check the url against the contents of each list, and return the color of restriction the url belongs to
QString BrowserTab::checkUrl(QString url)
{
    QString domain = getDomain(url);

    for(int i = 0 ; i < Lists::WhiteList->length(); i++)
    {
        if((*Lists::WhiteList)[i].toString().contains(domain))
        {
            return "white";
        }
    }

    for(int i = 0 ; i < Lists::GreenList->length(); i++)
    {
        if((*Lists::GreenList)[i].toString().contains(domain))
        {
            return "green";
        }
    }

    for(int i = 0 ; i < Lists::GrayList->length(); i++)
    {
        if((*Lists::GrayList)[i].toString().contains(domain))
        {
            return "gray";
        }
    }

    for(int i = 0 ; i < Lists::BlackList->length(); i++)
    {
        if((*Lists::BlackList)[i].toString().contains(domain))
        {
            return "black";
        }
    }

    return "white"; //Assume whitelist
}
