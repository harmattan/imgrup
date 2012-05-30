#include <upload.h>

//fortest
#include <accounts-qt/Accounts/Account>

Upload::Upload(QObject *parent)
    : QObject(parent),
      nam(new QNetworkAccessManager(this))
{
    connect(nam, SIGNAL(finished(QNetworkReply*)), this, SLOT(parser(QNetworkReply*)));
}

Upload::~Upload()
{

}






void Upload::parser(QNetworkReply *reply)      //parsing data due to request
{
    QString response = reply->readAll();
    QScriptValue sc;
    QScriptEngine engine;
    qDebug() << "test: "<<response;
    sc = engine.evaluate("("+ QString(response)+ ")");
    QString data;
    qDebug() << "url: "<<sc.property("upload").property("links").property("original").toString();
    data = sc.property("upload").property("links").property("original").toString();
    emit resulturl(data);//return url only
    reply->close();
    return;

}

void Upload::progresscalc( qint64 sent, qint64 total)
{



    double sent_p = sent;
    double total_p = total;
    double percentagedouble = (sent_p/total_p) * 100;
    int percentage = percentagedouble;
    emit resultprogress (percentage);


}





void Upload::upload_request(QString filename)
{


    filename.remove(0,7);
    QString key="c4f5cf8a8f1782d6388edb1b05cf8efa04ec64af4";
    QString key_anon="0426cb779599180503fd02a0e134ff03";
    QString secret="67560fc48f699bd5a518b35f120b44be";
    QString method="HMAC-SHA1";
    QString version ="1.0";

    QUrl url("http://api.imgur.com/2/upload.json");

    QByteArray postdata;

    QFile img_file(filename);

    if (!img_file.open(QIODevice::ReadOnly))
        qDebug() << "can't read file" << endl;
    QByteArray fileData = img_file.readAll().toBase64();
    img_file.close();


    //POST data
    postdata.append(QString("key=").toUtf8());
    postdata.append(QUrl::toPercentEncoding(key_anon));
    postdata.append(QString("&image=").toUtf8());
    postdata.append(QUrl::toPercentEncoding(fileData));
    //END POST data

    QNetworkReply *reply = nam->post(QNetworkRequest(url), postdata);
    connect(reply, SIGNAL(uploadProgress(qint64,qint64)), this, SLOT(progresscalc(qint64,qint64)));

}

void Upload::share_link(QString linktoshare){

        // thanks matyjas for example on — https://github.com/matyjas/share-bear/
        QString title = "Imgrup";

        QString desc = "uploaded to imgur with N9";


        MDataUri duri;

        duri.setMimeType ("text/x-url");

        duri.setTextData (linktoshare);

        duri.setAttribute ("title", title);

        duri.setAttribute ("description", desc);

        if (duri.isValid() == false) {

            qCritical() << "Invalid URI";

            return;
        }


        QStringList link;

        link << duri.toString();
    ShareUiInterface shareIf("com.nokia.ShareUi");
    shareIf.share(link);

}







