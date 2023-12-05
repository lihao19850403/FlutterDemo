//
//  FlutterNativeLib.m
//  Runner
//
//  Created by li.hao85 on 2023/12/5.
//

#import "FlutterNativeLib.h"

@implementation FlutterNativeLib

+ (void) registerWith:(FlutterViewController *)controller {
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"flutter_plugin_demo" binaryMessenger:controller];
    [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult _Nonnull result){
        if ([call.method isEqualToString:@"getPlatformVersion"]) {
            NSString *versionInfo = [UIDevice currentDevice].systemVersion;
            result(versionInfo);
        } else {
            result([FlutterError errorWithCode:@"errorCode" message:[NSString stringWithFormat:@"errorMessage"] details:@"Not Implemented!"]);
        }
    }];
}

@end
