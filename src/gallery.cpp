#include <gallery.h>


Gallery::Gallery(QObject *parent)
    : QObject(parent),
      nam(new QNetworkAccessManager(this)),
      nam2(new QNetworkAccessManager(this))


{
   connect(nam, SIGNAL(finished(QNetworkReply*)), this, SLOT(parser(QNetworkReply*)));
   connect(nam2, SIGNAL(finished(QNetworkReply*)), this, SLOT(image_parser(QNetworkReply*)));

}

Gallery::~Gallery()
{

}





void Gallery::parser(QNetworkReply *reply)      //parsing data due to request
{
    QString response = reply->readAll();
    QScriptValue sc;
    QScriptEngine engine;
    sc = engine.evaluate("("+ QString(response)+ ")");
    emit resultgallery(response);    //return whole json response



}
void Gallery::image_parser(QNetworkReply *reply)      //parsing data due to request
{
    QString response = reply->readAll();
    QScriptValue sc;
    QScriptEngine engine;
    sc = engine.evaluate("("+ QString(response)+ ")");
    emit resultimagedata(response);    //return whole json response



}

void Gallery::image_details(QString hash) //gallery, for now period is not used, maybe in future we'll use it for time period
{

    QUrl url("http://imgur.com/gallery/"+hash+".json");
//    QNetworkAccessManager *networkManager = new QNetworkAccessManager(this);
//    connect(networkManager, SIGNAL(finished(QNetworkReply*)), this, SLOT(image_parser(QNetworkReply*)));
    nam2->get(QNetworkRequest(url));

}






void Gallery::gallery_request(QString period) //gallery, for now period is not used, maybe in future we'll use it for time period
{

    QUrl url("http://imgur.com/gallery/hot.json");


    nam->get(QNetworkRequest(url));

}
