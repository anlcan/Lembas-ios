//
//  NSObject+HandsomeObject_REST_.h
//  OdeAlClient
//
//  Created by Anil Can Baykal on 12/16/13.
//  Copyright (c) 2013 Anil Can Baykal. All rights reserved.
//

// requires https://github.com/AFNetworking/AFNetworking.git

#import <Foundation/Foundation.h>
#import "HandsomeObject.h"
#import "AFNetworking.h"

@interface HandsomeObject (REST)
+(void)setHost:(NSString *)_host;

+(void)get:(NSString *)objectKey completion:(void (^)(BOOL succes, HandsomeObject* result)) comp;
+(void)put:(HandsomeObject*)obj completion:(void (^)(BOOL success, HandsomeObject * result))comp;
+(void)remove:(HandsomeObject*)obj completion:(void (^)(BOOL success))comp;

+(void)list:(void (^)(BOOL succes, NSArray * result)) comp;

@end
