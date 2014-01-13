//
//  NSObject+HandsomeObject_REST_.h
//  OdeAlClient
//
//  Created by Anil Can Baykal on 12/16/13.
//  Copyright (c) 2013 Anil Can Baykal. All rights reserved.
//

// requires https://github.com/AFNetworking/AFNetworking.git

#import <Foundation/Foundation.h>
#import "LembasObject.h"
#import "AFNetworking.h"

@interface LembasObject (REST)
+(void)setHost:(NSString *)_host;

+(void)get:(NSString *)objectKey completion:(void (^)(BOOL succes, LembasObject* result)) comp;
+(void)put:(LembasObject*)obj completion:(void (^)(BOOL success, LembasObject * result))comp;
+(void)remove:(LembasObject*)obj completion:(void (^)(BOOL success))comp;

+(void)list:(void (^)(BOOL succes, NSArray * result)) comp;
+(void)list:(void (^)(BOOL, NSArray *))comp path:(NSArray *)pathObjects;

@end
