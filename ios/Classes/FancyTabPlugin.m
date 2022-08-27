#import "FancyTabPlugin.h"
#if __has_include(<fancy_tab/fancy_tab-Swift.h>)
#import <fancy_tab/fancy_tab-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fancy_tab-Swift.h"
#endif

@implementation FancyTabPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFancyTabPlugin registerWithRegistrar:registrar];
}
@end
