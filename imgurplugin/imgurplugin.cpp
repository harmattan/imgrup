/**
 * @file xmppplugin.cpp
 * @author Bernd Wachter <bwachter@lart.info>
 * @date 2012
 */

#include <QVariantMap>
#include <Accounts/Account>
#include <AccountsUI/AbstractAccountSetupContext>
#include <AccountsUI/NGenericAccountSetupContext>
#include <AccountsUI/ValidationData>
#include "imgurplugin.h"
using namespace Accounts;
using namespace AccountsUI;

AbstractAccountSetupContext *ImgurPlugin::accountSetupContext(Account *account, SetupType type, QObject *parent)
{
    NGenericAccountSetupContext *ctx = new NGenericAccountSetupContext(account, type, parent);
    ctx->setValidationData(buildValData());
    return ctx;
}

ValidationData ImgurPlugin::buildValData()
{
    QVariantMap params;
    params.insert("ConsumerKey", "c4f5cf8a8f1782d6388edb1b05cf8efa04ec64af4");
    params.insert("ConsumerSecret", "67560fc48f699bd5a518b35f120b44be");
    params.insert("Callback", "https://api.imgur.com/2/account.json");
    params.insert("RequestEndpoint", "https://api.imgur.com/oauth/request_token");
    params.insert("TokenEndpoint", "https://api.imgur.com/oauth/access_token");
    params.insert("AuthorizationEndpoint", "https://api.imgur.com/oauth/authorize");
    return ValidationData("oauth2", "HMAC-SHA1", params);
}
