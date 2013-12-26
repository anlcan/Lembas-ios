//
//  NSObject+HandsomeObject_REST_.m
//  OdeAlClient
//
//  Created by Anil Can Baykal on 12/16/13.
//  Copyright (c) 2013 Anil Can Baykal. All rights reserved.
//

#import "HandsomeObject+REST.h"
#import "NSObject+Marshall.h"
const NSString * host;

@implementation HandsomeObject (REST)


+(void)setHost:(NSString *)_host{
    host = [_host copy];
}

+(void)get:(NSString *)objectKey completion:(void (^)(BOOL succes, HandsomeObject* result)) comp{
    
    NSString * type  = [NSString stringWithUTF8String:class_getName([self class])];
    
    NSString * path = [NSString stringWithFormat:@"rest/api/%@/%@", type, objectKey];
    NSString * url = [NSString stringWithFormat:@"%@%@",host, path];
//    NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:url];
//    AFHTTPRequestOperation * op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSLog(@"JSON: %@", responseObject);
             HandsomeObject * obj = [NSObject deserialize:responseObject];
             if ( obj != nil){
                 comp(YES, obj);
             } else {
                 comp(NO, nil);
             }
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
             comp(NO, nil);
    }];
}


+(void)remove:(HandsomeObject*)obj completion:(void (^)(BOOL success))comp{
    NSString * type  = [NSString stringWithUTF8String:class_getName([self class])];
    
    NSString * path = [NSString stringWithFormat:@"rest/api/%@/%@", type, obj.objectKey];
    NSString * url = [NSString stringWithFormat:@"%@%@",host, path];
    //    NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:url];
    //    AFHTTPRequestOperation * op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager DELETE:url
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSLog(@"JSON: %@", responseObject);
             HandsomeObject * obj = [NSObject deserialize:responseObject];
             if ( obj != nil){
                 comp(YES);
             } else {
                 comp(NO);
             }
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
             comp(NO);
         }];
 
}

+(void)put:(HandsomeObject*)obj completion:(void (^)(BOOL success, HandsomeObject * result))comp{
    NSString * type  = [NSString stringWithUTF8String:class_getName([self class])];
    
    NSString * path = [NSString stringWithFormat:@"rest/api/%@", type];
    NSString * url = [NSString stringWithFormat:@"%@%@",host, path];
    
    NSMutableURLRequest * request  =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    [request setHTTPBody:[NSJSONSerialization dataWithJSONObject:[NSObject serialize:obj]
                                                        options:0
                                                           error:nil]];
    
    [request setHTTPMethod:@"PUT"];
    AFHTTPRequestOperationManager *m = [AFHTTPRequestOperationManager manager];

    AFHTTPRequestOperation *operation = [m HTTPRequestOperationWithRequest:request
                                                                   success:^(AFHTTPRequestOperation *operation, id responseObject){
                                                                    
                                                                       _NSLog(@"JSON: %@", responseObject);
                                                                       HandsomeObject * obj = [NSObject deserialize:responseObject];
                                                                       if ( obj != nil){
                                                                           comp(YES, obj);
                                                                       } else {
                                                                           comp(NO, nil);
                                                                       }
                                                                   }
                                                                   failure:^(AFHTTPRequestOperation *operation, NSError *error){
                                                                       comp(NO, nil);
                                                                   }];
    
    [m.operationQueue addOperation:operation];
    
}



+(void)list:(void (^)(BOOL succes, NSArray * result)) comp{
    NSString * type  = [NSString stringWithUTF8String:class_getName([self class])];
    
    NSString * path = [NSString stringWithFormat:@"rest/api/%@", type];
    NSString * url = [NSString stringWithFormat:@"%@%@",host, path];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSLog(@"JSON: %@", responseObject);
             
             NSArray * _response = (NSArray*)responseObject;
             NSMutableArray * result = [NSMutableArray arrayWithCapacity:[_response count]];
             
             for ( NSDictionary * dict  in _response){
                 NSArray *obj = [NSObject deserialize:dict];
                 [result addObject:obj];
             }
             if ( result != nil){
                 comp(YES, result);
             } else {
                 comp(NO, nil);
             }
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
             comp(NO, nil);
         }];
}

@end
