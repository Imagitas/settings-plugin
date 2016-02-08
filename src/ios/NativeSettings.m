
#import "NativeSettings.h"
#import <Cordova/CDV.h>

@implementation NativeSettings

-(void) cordovaOpenSettings:(CDVInvokedUrlCommand*)command {

    CDVPluginResult* pluginResult = nil;

    if (&UIApplicationOpenSettingsURLString == NULL) {
      pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Settings plugin only available in iOS 8 or greater."];
    } else {
      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
      pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];  
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end