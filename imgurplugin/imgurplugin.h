/**
 * @file xmppplugin.h
 * @author Bernd Wachter <bwachter@lart.info>
 * @date 2012
 */

#ifndef _IMGURPLUGIN_H
#define _IMGURPLUGIN_H

#include <QObject>
#include <Accounts/Account>
#include <AccountsUI/AbstractAccountSetupContext>
#include <AccountsUI/NProviderPluginProcess>
#include <AccountsUI/ValidationData>

class ImgurPlugin : public AccountsUI::NProviderPluginProcess
{
    Q_OBJECT
public:
    ImgurPlugin(int &argc, char **argv) :
        AccountsUI::NProviderPluginProcess(argc, argv)
    {
    }

    AccountsUI::AbstractAccountSetupContext* accountSetupContext(Accounts::Account *account, AccountsUI::SetupType type, QObject *parent);
    static AccountsUI::ValidationData buildValData();
};

#endif
