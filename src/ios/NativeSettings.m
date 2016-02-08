
#import "NativeSettings.h"
#import <Cordova/CDV.h>

@implementation NativeSettings

-(void) cordovaOpenSettings:(CDVInvokedUrlCommand*)command {

    CDVPluginResult* pluginResult = nil;

    BOOL canOpenSettings = (&UIApplicationOpenSettingsURLString != NULL);
    NSLog(@"canOpenSettings:  @", canOpenSettings);
    if (canOpenSettings) {
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        NSLog(@"nsUrl:  @", url);
        [[UIApplication sharedApplication] openURL:url];
        NSLog(@"opened url");
    }

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end