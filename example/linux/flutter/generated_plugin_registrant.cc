//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <fancy_tab/fancy_tab_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) fancy_tab_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FancyTabPlugin");
  fancy_tab_plugin_register_with_registrar(fancy_tab_registrar);
}
