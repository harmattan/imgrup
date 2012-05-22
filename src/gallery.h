#ifndef GALLERY_H
#define GALLERY_H
//#DEFINE QString key="c4f5cf8a8f1782d6388edb1b05cf8efa04ec64af4";
//QString key_anon="0426cb779599180503fd02a0e134ff03";
//QString secret="67560fc48f699bd5a518b35f120b44be"

#include <QObject>
#include <QString>
#include <upload.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <QByteArray>
#include <QtScript/QScriptEngine>
#include <QtScriptTools/QtScriptTools>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>


class Gallery : public QObject
 {
     Q_OBJECT

 public:


     Gallery(QObject *parent = 0);
     ~Gallery();

     Q_INVOKABLE void gallery_request(QString period);
     Q_INVOKABLE void image_details(QString hash);


signals:
     void resultgallery(QString data);
     void resultimagedata(QString data);

public slots:

    void parser(QNetworkReply *reply);
    void image_parser(QNetworkReply *reply);



 private:

    QNetworkAccessManager *nam;
    QNetworkAccessManager *nam2;


};

#endif // GALLERY_H


