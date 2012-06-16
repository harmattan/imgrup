#ifndef TOOLS_H
#define TOOLS_H

#include <maemo-meegotouch-interfaces/shareuiinterface.h>
#include <MDataUri>
#include <AccountSetup/ProviderPluginProxy>
#include <SignOn/AuthService>
#include <SignOn/Identity>
#include <SignOn/SessionData>
#include <accounts-qt/account.h>
#include <accounts-qt/manager.h>

class Tools : public QObject
{
    Q_OBJECT

public:


    Tools(QObject *parent = 0);
    ~Tools();


    Q_INVOKABLE void share_link(QString linktoshare);
    Q_INVOKABLE void account_tokens();


signals:


public slots:


private:

};

#endif // TOOLS_H
