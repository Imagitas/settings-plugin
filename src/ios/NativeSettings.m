
#import "NativeSettings.h"
#import <Cordova/CDV.h>

@implementation NativeSettings

-(void) cordovaOpenSettings:(CDVInvokedUrlCommand*)command {

    CDVPluginResult* pluginResult = nil;

    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end