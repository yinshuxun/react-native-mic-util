//
//  BGNativeModuleExample.m
//  BGNativeModuleExample
//
//  Created by 印书勋 on 2017/7/19.
//  Copyright © 2017年 印书勋. All rights reserved.
//
#import "BGNativeModuleExample.h"
#import "RCTLog.h"

@implementation BGNativeModuleExample

RCT_EXPORT_MODULE(BGNativeModuleExample);
RCT_EXPORT_METHOD(testPrint:(NSString *)name info:(NSDictionary *)info) {
    RCTLogInfo(@"%@: %@", name, info);
}
RCT_EXPORT_METHOD(getNativeClass:(RCTResponseSenderBlock)callback) {
    callback(@[NSStringFromClass([self class])]);
}

RCT_REMAP_METHOD(testRespondMethod,
                 name:(NSString *)name
                 resolve:(RCTPromiseResolveBlock)resolve
                 rejecte:(RCTPromiseRejectBlock)reject) {
    if([self respondsToSelector:NSSelectorFromString(name)]) {
        resolve(@YES);
    }
    else {
        reject(@"-1001", @"not respond this method", nil);
    }
}

@end
