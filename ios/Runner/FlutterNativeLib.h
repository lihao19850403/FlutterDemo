//
//  FlutterNativeLib.h
//  Runner
//
//  Created by li.hao85 on 2023/12/5.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlutterNativeLib : NSObject

+ (void) registerWith:(FlutterViewController *)controller;

@end

NS_ASSUME_NONNULL_END
