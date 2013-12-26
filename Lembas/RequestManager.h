//
//  RequestManager.h
//  Runtime
//
//  Created by Anil Can Baykal on 8/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CommonCrypto/CommonDigest.h>
#import "HandsomeRequest.h"

#import "AFNetworking.h"

#ifdef VERSION
#define MACRO_VALUE_TO_STRING_( m ) #m
#define MACRO_VALUE_TO_STRING( m ) MACRO_VALUE_TO_STRING_( m )
#endif

//==============================================================================
// USER DEFAULTS KEYS
#define registerIdKey	@"com.happyblueduck.handsome.registerId"
#define deviceIdKey		@"com.happyblueduck.handsome.deviceId"
#define userAgentKey	@"com.happyblueduck.handsome.userAgent"

//==============================================================================
// security token signature length
#define SIGNATURE_LENGTH	5


//==============================================================================
// HEADERS
#define HANDSOME_HEADER_SOURCE		@"x-handsome-source"
#define HANDSOME_HEADER_VERSION		@"x-handsome-version"
#define HANDSOME_HEADER_TIME 		@"x-handsome-time"
#define HANDSOME_HEADER_DEVICEID	@"x-handsome-deviceId"
#define HANDSOME_HEADER_TOKEN		@"x-handsome-applicationToken"
#define HANDSOME_HEADER_SECURITY	@"x-handsome-securityToken"


#define HANDSOME_RESPONSE_OK		@"OK"

//==============================================================================
@interface HandsomeResponseSerializer : AFJSONResponseSerializer<AFURLRequestSerialization>

@end


//==============================================================================

@interface RequestManager : NSObject <HandsomeRequestDelegate, UIWebViewDelegate> {
    
    NSOperationQueue 	* queue;
    NSMutableDictionary * requestCache; 
    
    NSString * registerId;
}
@property (nonatomic, copy)NSString * userAgent;
@property (nonatomic, strong) NSString * session;
@property (nonatomic) BOOL useSynchronousForTesting;

+ (RequestManager*) sharedManager; 

-(void)addRequest:(HandsomeRequest*) req;
-(void)setSession:(NSString *)newSession;



@end