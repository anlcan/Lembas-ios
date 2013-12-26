//
//  Request.h
//  Runtime
//
//  Created by Anil Can Baykal on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Marshall.h"
#import "HandsomeObject.h"
#import "HandsomeResponse.h"

@class HandsomeRequest;

//==============================================================================
@protocol HandsomeRequestDelegate <NSObject>

@optional

-(NSDictionary*) additionalHeaders;
-(void)requestWillStart:(HandsomeRequest*)req;
-(void)requestFailed:(HandsomeRequest*)req withError:(id)error;
-(void)requestFinished:(HandsomeRequest*)req withResponse:(HandsomeResponse*)resp;

@end


//==============================================================================
@interface HandsomeRequest : HandsomeObject {
	
    NSString * host;
    
@private
    
    void (^__completionBlock)(HandsomeRequest* req);
    void (^__failureBlock)(HandsomeRequest* req, NSError * error);

 	id<HandsomeRequestDelegate> __weak __delegate;
    NSURLConnection * __weak __httpRequest;
    NSString * __token;
    
}

@property (nonatomic) NSTimeInterval startTime;
@property (nonatomic) NSTimeInterval requestDuration; // time between creation and execution final

@property (nonatomic, strong) NSString *verb;
@property (nonatomic, strong) NSString *session; // generated id on every app launch
@property (nonatomic, strong) NSString *registerId; // given by a Handsome Register Response
@property (nonatomic, strong) NSString *deviceId;   // generated once for device. pseudo-random UDID

@property (nonatomic, weak) id<HandsomeRequestDelegate> delegate;
@property ( nonatomic, weak) NSURLConnection * httpRequest;

@property (nonatomic, copy) void (^completionBlock)(HandsomeRequest* req);
@property (nonatomic, copy) void (^failureBlock)(HandsomeRequest* req ,NSError * error);


@property (nonatomic) int statusCode;
@property (nonatomic, strong)HandsomeResponse * response;

-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d;

-(void)run;
-(void)done;


-(NSURL*)getHost;
-(void)setEndPointHost:(NSString *)_host;

-(void)cancel;

-(HandsomeResponse*)getHandsomeResponse;


@end



