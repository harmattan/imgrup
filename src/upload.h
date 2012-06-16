#ifndef UPLOAD_H
#define UPLOAD_H


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
#include <QNetworkSession>
#include <QApplication>

class Upload : public QObject
{
    Q_OBJECT

public:


    Upload(QObject *parent = 0);
    ~Upload();


    Q_INVOKABLE void upload_request(QString filename);


signals:

//    void token_return(QString token);
    void resulturl(QString data);
    void resultprogress (int percentage);

public slots:

//    void get_token();
    void parser(QNetworkReply *reply);
    void progresscalc(qint64 sent, qint64 total);
//    void onResponse(const SignOn::SessionData &sessionData);
//    void onError(const SignOn::Error &error);







private:

    QNetworkAccessManager *nam;
//    SignOn::Identity *m_identity;
//    SignOn::AuthSession *m_session;

};

#endif // UPLOAD_H
