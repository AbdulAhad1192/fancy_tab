#include "include/fancy_tab/fancy_tab_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "fancy_tab_plugin.h"

void FancyTabPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  fancy_tab::FancyTabPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
