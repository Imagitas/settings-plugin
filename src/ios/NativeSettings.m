
#import "NativeSettings.h"
#import <Cordova/CDV.h>

@implementation NativeSettings

-(void) cordovaOpenSettings:(CDVInvokedUrlCommand*)command {

    CDVPluginResult* pluginResult = nil;

    BOOL canOpenSettings = (&UIApplicationOpenSettingsURLString != NULL);
    if (canOpenSettings) {
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:url];
    }

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end