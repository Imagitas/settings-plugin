#import <Cordova/CDV.h>

@interface NativeSettings : CDVPlugin

// This will open the settings
- (void) cordovaOpenSettings:(CDVInvokedUrlCommand *)command;

@end