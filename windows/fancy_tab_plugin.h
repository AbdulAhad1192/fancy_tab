#ifndef FLUTTER_PLUGIN_FANCY_TAB_PLUGIN_H_
#define FLUTTER_PLUGIN_FANCY_TAB_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace fancy_tab {

class FancyTabPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FancyTabPlugin();

  virtual ~FancyTabPlugin();

  // Disallow copy and assign.
  FancyTabPlugin(const FancyTabPlugin&) = delete;
  FancyTabPlugin& operator=(const FancyTabPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace fancy_tab

#endif  // FLUTTER_PLUGIN_FANCY_TAB_PLUGIN_H_
