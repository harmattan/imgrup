#ifndef TOOLS_H
#define TOOLS_H

#include <maemo-meegotouch-interfaces/shareuiinterface.h>
#include <MDataUri>


class Tools : public QObject
{
    Q_OBJECT

public:


    Tools(QObject *parent = 0);
    ~Tools();


    Q_INVOKABLE void share_link(QString linktoshare);


signals:


public slots:


private:

};

#endif // TOOLS_H
