#include <MExport>
#include <QScopedPointer>
#include "imgurplugin.h"

M_EXPORT int main(int argc, char **argv)
{
  QScopedPointer<ImgurPlugin> plugin(new ImgurPlugin(argc, argv));
  return plugin->exec();
}
