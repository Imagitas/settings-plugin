#import <Cordova/CDV.h>

@interface Settings : CDVPlugin

// This will open the settings
- (void) cordovaOpenSettings:(CDVInvokedUrlCommand *)command;

@end