//
//  RequestManager.h
//  Runtime
//
//  Created by Anil Can Baykal on 8/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CommonCrypto/CommonDigest.h>
#import "LembasRequest.h"

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
// HEADERS
#define HANDSOME_HEADER_SOURCE		@"x-handsome-source"
#define HANDSOME_HEADER_VERSION		@"x-handsome-version"
#define HANDSOME_HEADER_TIME 		@"x-handsome-time"

//==============================================================================
// NOTIFICATIONS
// every notification will have a LembasRequest instance as object
extern NSString * const RequestManagerWillSendRequestNotification;
extern NSString * const RequestManagerDidSendRequestNotification;
extern NSString * const RequestManagerDidReceivedResponseNotification;

//==============================================================================
//  AFNetworking serializer
@interface HandsomeResponseSerializer : AFJSONResponseSerializer<AFURLRequestSerialization>

@end


//==============================================================================

@interface RequestManager : NSObject <LembasRequestDelegate, UIWebViewDelegate> {
        
    NSString * registerId;
}
/**
 * preferred USER-AGENT to send to backend. if null, will be fetch from UIWebView
 */
@property (nonatomic, copy)NSString * userAgent;

/**
 * unique session ID, can be used with Google Analytics or other tools sessions
 */
@property (nonatomic, strong) NSString * session;


/**
 *  if set to YES, underliying AFNetwotrking will pincertificate
 */
@property (nonatomic) BOOL shouldPinCertificate;

/**
 * additional headers to send with every Lembas Request
 */
@property (nonatomic, strong) NSMutableDictionary * additionalHeaders;
+ (RequestManager*) sharedManager; 

-(void)addRequest:(LembasRequest*) req;
-(void)setSession:(NSString *)newSession;


@end

