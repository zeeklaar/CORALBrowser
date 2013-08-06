/*
 *This is an object that will go with every BrowserTab object.
 *It will keep track of all the different sites that have been visited,
 *and how long has been spent on each. Timers can be tricky, and this one
 *is very. The hardest part is going to be making sure that each timer
 *in each tab isn't interfering with the other's counting. The challenge:
 *How do we handle when two tabs are at the same exact page, or same general site?
*/

#include "mainwindow.h"
#include "tabtimer.h"
#include "networkhandler.h"

TabTimer::TabTimer()
{
    siteList = new QVariantList();

    timer = new QTimer();
    timer->setInterval(100);
    connect(timer, SIGNAL(timeout()), this, SLOT(recordTime()));
}

/*
    Public Functions
*/


//Returns the elapsed time of the current timer
int TabTimer::getTime()
{
    if(timer->isActive())
    {
        return elapsedTime->elapsed();
    }

    return -1;
}

void TabTimer::startTimingSite(QUrl siteURL)
{

    //See if we've written data down before
    file.setFileName(QCoreApplication::applicationDirPath() + "/res/data/offlineHistory.json");
    if (!file.open(QIODevice::ReadWrite))
    {
        qWarning() << "Failed to open" << file.fileName() << "for write:" << file.errorString();
    }

    QTextStream inStream(&file);
    QString storedData = inStream.readAll();

    //If we have found stored data, then we'll serialize it and use it later
    if(storedData != "")
    {
        dataFound = true;
        QJson::Parser* parser = new QJson::Parser();
        existingData = parser->parse(storedData.toLatin1()).toMap();
    }


    //Derive the general site name
    QString siteString = siteURL.toString();
    QString host = siteURL.host();
    int mapIndex;

    if(host.contains("www."))
    {
        host = host.mid(4);
    }

    QVariantMap map;
    QVariantMap* siteMap = NULL;

    //Check to see if we've already stored that page
    for(int i =0; i < siteList->length(); i++)
    {
        map = siteList->at(i).toMap();

        if(map["title"].toString() == host)
        {
            siteMap = new QVariantMap();
            (*siteMap) = map;
            mapIndex = i;
            break;
        }
    }

    //If we have, great, we'll just edit some values, otherwise, create a new one

    //Site does not exist
    if(!siteMap)
    {
        //Create a new site map entirely
        siteMap = new QVariantMap();
        siteMap->insert("title", host);
        siteMap->insert("time", "TIMER VALUE");
        siteMap->insert("pages", "[]"); //This should place a blank array

        //Add a new blank object to the pages list
        QVariantList sitePageList = (*siteMap)["pages"].toList();
        sitePageList.append("{}");

        //Get that new object and then fill it with data
        QVariantMap pageMap = (sitePageList).at(0).toMap();
        pageMap.insert("title", siteString);
        pageMap.insert("time", "TIMER VALUE"); //This is the part that we need to record into
        pageMap.insert("date", QDate::currentDate()); //We need to keep track of what day this was recorded on

        sitePageList.removeAt(0); // Remove the blank object we added a few lines above

        sitePageList.append(pageMap);
        siteMap->insert("pages", sitePageList);

        siteToRecord = *siteMap;
        pageListToRecord = sitePageList;
        pageToRecord = pageMap;

        //Add the completed map to the array
        siteList->append(*siteMap);

    }
    //Site does exist
    else
    {


        //Grab the pages list
        QVariantList sitePageList = ((*siteList)[mapIndex].toMap())["pages"].toList();

        QVariantMap* page = NULL;

        //Search the pages list for the exact page
        for(int i =0; i < sitePageList.length(); i++)
        {
            QVariantMap tempPage = sitePageList.at(i).toMap();

            if((tempPage)["title"].toString() == siteString)
            {
                page = &tempPage;
                return;
            }
        }

        //If we found the page, start adding time to it, if not, create it and then start counting

        //Page was not found
        if(!page)
        {
            //Create a new page
            QVariantMap* page = new QVariantMap();

            page->insert("title", siteString);
            page->insert("time", "TIMER VALUE"); //This is the part that we need to record into
            page->insert("date", QDate::currentDate());

            //Now add the newly created page back into the page list and make sure it's in the global list
            sitePageList.append(*page);

            (*siteMap)["pages"] = sitePageList;
            (*siteList)[mapIndex] = *siteMap;

            siteToRecord = *siteMap;
            pageListToRecord = sitePageList;
            pageToRecord = *page;
        }

        //Page was found
        else
        {           
            siteToRecord = *siteMap;
            pageListToRecord = sitePageList;
            pageToRecord = *page;
        }
    }

    timer->start(); //This will start recording the time spent on the tab.
    elapsedTime = new QTime();
    elapsedTime->start();
}

void TabTimer::stopTimingSite(QUrl siteUrl)
{
    //TODO: stop timing the specified site
}



/*
    Private Functions
*/



//Add up the time spent on each page into the page's parent site's time value
void TabTimer::calculateTimeSpent(QVariantList* siteList)
{
    for(int i =0; i < siteList->length(); i++)
    {
        int totalMS = 0; //The total MS spent on the entire site

        QVariantMap siteMap = (*siteList)[i].toMap();
        QVariantList sitePages = siteMap["pages"].toList();

        //Go through each page and add up the total time
        for(int j = 0; j < sitePages.length(); j++)
        {
            QString timeString = (sitePages[j].toMap())["time"].toString();

            totalMS += TimeHelper::timeToMilliseconds(timeString);
        }

        //Update the overall site time
        siteMap["time"] = TimeHelper::millisecondsToTime(totalMS);

        //Add the site map back into the sitelist
        (*siteList)[i] = siteMap;
    }
}

//Have to compare each page in the existing data to each page in the new data, and combine the values as necessary
QVariantList TabTimer::combineData(QVariantList existingData, QVariantList newData)
{
    /*
First compare each existing site to each new site; if there is a match, start comparing their individual pages,
if there is no new site matching ANY existing site name, then we need to add it to the existing data
*/

    for(int i = 0; i < newData.length(); i++)
    {
        QVariantMap newSite = newData[i].toMap();
        QVariantList newSitePages = newSite["pages"].toList(); //For page comparison
        QString newSiteName = newSite["title"].toString();
        int newSiteTime = TimeHelper::timeToMilliseconds(newSite["time"].toString());

        bool siteFound = false;

        for(int j = 0; j < existingData.length(); j++)
        {
            QVariantMap existingSite = existingData[j].toMap();
            QVariantList existingSitePages = existingSite["pages"].toList(); //For page comparison
            QString existingSiteName = existingSite["title"].toString();
            int existingSiteTime = TimeHelper::timeToMilliseconds(existingSite["time"].toString());

            if(newSiteName == existingSiteName)
            {
                siteFound = true;

                //Add up the site level times together
                int combinedSiteTime = newSiteTime + existingSiteTime;
                QString combinedSiteTimeString = TimeHelper::millisecondsToTime(combinedSiteTime);
                existingSite["time"] = combinedSiteTimeString;

                //Start comparing the pages
                for(int k = 0; k < newSitePages.length(); k++)
                {
                    QVariantMap newPage = newSitePages[k].toMap();
                    QString newPageName = newPage["title"].toString();
                    QString newPageDate = newPage["date"].toString();
                    int newPageTime = TimeHelper::timeToMilliseconds(newPage["time"].toString());

                    bool pageFound = false;
                    for(int l = 0; l < existingSitePages.length(); l++)
                    {
                        QVariantMap existingPage = existingSitePages[l].toMap();
                        QString existingPageName = existingPage["title"].toString();
                        QString existingPageDate = existingPage["date"].toString();
                        int existingPageTime = TimeHelper::timeToMilliseconds(existingPage["time"].toString());

                        //If the two pages have the same name and date; add their values together
                        if((newPageName == existingPageName)&&(newPageDate == existingPageDate))
                        {
                            pageFound = true;

                            int combinedPageTime = newPageTime + existingPageTime;
                            QString combinedPageTimeString = TimeHelper::millisecondsToTime(combinedPageTime);
                            existingPage["time"] = combinedPageTimeString;
                            existingSitePages[l] = existingPage;
                        }
                    }

                    //If the page doesn't match anywhere, add it onto the site object
                    if(!pageFound)
                    {
                        existingSitePages.append(newPage);
                    }
                }
            }

            existingSite["pages"] = existingSitePages;
            existingData[j] = existingSite;
        }

        //No match; add the new site right into the existingData
        if(!siteFound)
        {
            existingData.append(newSite);
        }
    }

    return existingData;
}



/*
    Private Slots
*/



//This will get the current ms on the timer and then record that data onto the pageToRecord object
void TabTimer::recordTime()
{
    //Insert time data into parts of QVariant map
    pageToRecord["time"] = TimeHelper::millisecondsToTime(elapsedTime->elapsed());

    //Insert the page into the page list
    for(int i =0 ; i < pageListToRecord.length(); i++)
    {
        if((pageListToRecord[i].toMap())["title"] == pageToRecord["title"])
        {
            pageListToRecord[i] = pageToRecord;
            break;
        }
    }

    //Insert the page list into the site object
    siteToRecord["pages"] = pageListToRecord;

    //Insert the page into the site list
    for(int i =0 ; i < siteList->length(); i++)
    {
        if(((*siteList)[i].toMap())["title"] == siteToRecord["title"])
        {
            (*siteList)[i] = siteToRecord;
            break;
        }
    }

    calculateTimeSpent(siteList);

    //Wrap the important data in a header
    QVariantMap baseData;
    baseData.insert("Type", QVariant("Time"));
    baseData.insert("Data", (*siteList));
    baseData.insert("User", QVariant(MainWindow::loginUser));

    //Serialize the site list into a json list, then write it out through the TCPSocket
    QJson::Serializer* serializer = new QJson::Serializer();


    //If we have existing written data, we'll combine the two sets of data
    QVariantMap dataToWrite = baseData; //By default we'll just write the new data

    if(dataFound)
    {
        baseData["Data"] = QVariant(combineData(existingData["Data"].toList(), baseData["Data"].toList()));
    }

    //If we're waiting for the user to log in, don't send this
    if(!MainWindow::loggingIn){

        //If we're connected to the server, throw the data up to it
        if(MainWindow::connected){
            QByteArray json = serializer->serialize(baseData);

            int size(json.size());
            char* data = json.data();


            //Without the if block this sends out data so frequently that sometimes data will will double
            //To keep that from happening, make sure that the data is only sent once a second
            if(lastSecondSent != QTime::currentTime().second()){

                quint64 error = NetworkHandler::networkHandler->clientSocket->write(data,size);

                if(error == -1)
                {
                    qDebug() << "Connection To Server Lost";
                    emit connectionLost();
                }
                lastSecondSent = QTime::currentTime().second();
            }
        }
        else //if not, write it down and then throw it up to the server next time we connect
        {
            emit connectionLost();

            //Serialize the dataToWrite
            QByteArray jsonToWrite = serializer->serialize(dataToWrite);

            //Remove all existing data in the file
            file.resize(0);

            //Write the data
            QTextStream outStream(&file);
            outStream << jsonToWrite;

            outStream.flush();

            //qDebug() << "No connection; Writing data to disk";
        }
    }
}
