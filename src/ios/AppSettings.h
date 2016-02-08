#import <Cordova/CDV.h>

@interface AppSettings : CDVPlugin

// This will open the settings
- (void) cordovaOpenSettings:(CDVInvokedUrlCommand *)command;

@end