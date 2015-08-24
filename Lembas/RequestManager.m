///  RequestManager.m
//  Runtime
//
//  Created by Anil Can Baykal on 8/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RequestManager.h"
#import "LembasUtil.h"

NSString * const RequestManagerWillSendRequestNotification 	= @"com.happyblueduck.lembas.willSendRequest";
NSString * const RequestManagerDidSendRequestNotification	=  @"com.happyblueduck.lembas.didSendRequest";
NSString * const RequestManagerDidReceivedResponseNotification = @"com.happyblueduck.lembas.didReceivedResponse";

NSString * const LembasPayloadResultKey = @"Result";
NSString * const LembasRequestKey 		= @"request";
NSString * const LembasPayloadErrorKey 	= @"Error";

//==============================================================================
@implementation HandsomeResponseSerializer

- (id)responseObjectForResponse:(NSURLResponse *)response
                           data:(NSData *)data
                          error:(NSError *__autoreleasing *)error{
    
    
    // deserialize jsonstring
    NSError * jsonError = nil;
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:data
                                                          options:NSJSONReadingAllowFragments
                                                            error:&jsonError];
    
    if ( jsonError != nil){
        NSString * dataString = [NSString stringWithUTF8String:data.bytes];
        NSLog(@"error parsing server result:%@\n\n%@\n\n",
              jsonError.localizedDescription,
              dataString);
    }
    
    LembasResponse * res = nil;

    
    NSDictionary * result = [dict objectForKey:LembasPayloadResultKey];
    if ( result != nil)
    	res = [NSObject deserialize:result];
    else if ( [dict objectForKey:LembasPayloadErrorKey]) {
        res = [NSObject deserialize:[dict objectForKey:LembasPayloadErrorKey]];
        
    }
    
    return res;
}
-(NSURLRequest*)requestBySerializingRequest:(NSURLRequest *)request withParameters:(id)parameters error:(NSError *__autoreleasing *)error{
    
    // TODO
    return  nil;
}


@end

//==============================================================================
@interface RequestManager(Private)

-(void)requestSuccess:(LembasRequest*) req;
-(void)requestFailure:(LembasRequest *)req withError:(NSError*)error;

@end

@interface RequestManager()
@property (nonatomic, strong)AFHTTPRequestOperationManager * manager;
@end

//==============================================================================



@implementation RequestManager

static RequestManager *sharedInstance = nil;



+ (id)sharedManager
{
    static RequestManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[RequestManager alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}


//==============================================================================
- (id)init
{
    self = [super init];
    
    if (self) {
        
        self.session = [LembasUtil generateUuidString];
        registerId = [[NSUserDefaults standardUserDefaults] objectForKey:registerIdKey];
                               
        //self.userAgent = [[NSUserDefaults standardUserDefaults] objectForKey:userAgentKey];
        //if ( self.userAgent == nil)
        [self discoverUserAgent];

        self.additionalHeaders = [NSMutableDictionary dictionaryWithCapacity:2];
        [self.additionalHeaders setObject:@"iOS"
                                   forKey:HANDSOME_HEADER_SOURCE];
        [self.additionalHeaders setObject:@"application/json; charset=utf-8"
                                   forKey:@"Content-Type"];
#ifdef VERSION
        
        // IF  YOU WANT TO UPDATE VERSION GOTO **build.sh**
        NSString * VERSION_STRING = @"" MACRO_VALUE_TO_STRING(VERSION) "";
        [self.additionalHeaders setObject:VERSION_STRING
                                   forKey:HANDSOME_HEADER_VERSION];
#endif
        self.manager =[AFHTTPRequestOperationManager manager];

        
        
    }
    
    return self;
}

-(void)setShouldPinCertificate:(BOOL)shouldPinCertificate{
    
    if ( shouldPinCertificate){
        self.manager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
        self.manager.securityPolicy.allowInvalidCertificates = NO;
        self.manager.securityPolicy.validatesDomainName = NO;
    } else {
        self.manager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    }
    
    _shouldPinCertificate = shouldPinCertificate;
}

//==============================================================================
// steal user agent from a dummy webview -
-(void)discoverUserAgent{
    /*
    UIWebView * _kolpa = [[UIWebView alloc] initWithFrame:CGRectZero];
    _kolpa.delegate = self;
    [_kolpa loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://whatsmyuseragent.com"]]];
    */
    if (!self.userAgent) {
        UIWebView *webview = [[UIWebView alloc] init];
        self.userAgent = [[webview stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"] copy];
    }
}




//==============================================================================
//
- (void) addRequest:(LembasRequest*) req {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RequestManagerWillSendRequestNotification object:req];
	// must be present on run time;
    req.session 	= self.session;
        
    req.startTime = [NSDate timeIntervalSinceReferenceDate];
    //req.deviceId = [[HandsomeManager shared] deviceId];
    
    // target address
    NSURL * host = [req getHost]; 
    _ASSERT(nil!= host);
    NSURL * url = [host URLByAppendingPathComponent:req.verb]; 
	
    NSString * handsome_time = [NSString stringWithFormat:@"%.0f", [NSDate timeIntervalSinceReferenceDate]];
    
	NSString * key 		= LembasRequestKey;
	NSDictionary * data = [NSObject serialize:req];
     	
	NSDictionary * dict = [NSDictionary dictionaryWithObjectsAndKeys:data, key,  nil]; 
	//NSData * output = [[CJSONSerializer serializer] serializeDictionary:dict error:&erol];
    //NSData * output = [dict JSONData];
    NSData * output = [NSJSONSerialization dataWithJSONObject:dict
                                                      options:NSJSONWritingPrettyPrinted
                                                        error:nil];

	_NSLog(@"\n//==============================================================================\n%@ -> \n|%@|\n",url,
           [NSString stringWithUTF8String:output.bytes]);


    NSMutableURLRequest * urlRequest = [NSMutableURLRequest requestWithURL:url];
    [urlRequest setHTTPMethod:@"POST"];
    
    [urlRequest addValue:handsome_time
      forHTTPHeaderField:HANDSOME_HEADER_TIME];

#ifdef TOKEN
    // token to hash
    NSString * tokenSource = [NSString stringWithFormat:@"%@%@%@",
                              handsome_time,
                              req.session,
                              req.verb];
    
    [urlRequest addValue:tokenSource
      forHTTPHeaderField:@"x-lembas-token"];
#endif
        
    //if (self.userAgent)
    [urlRequest addValue:self.userAgent forHTTPHeaderField:@"User-Agent"];
    [urlRequest setTimeoutInterval:req.timeout];
    [urlRequest setHTTPBody:output];
    
    // adding  headers
    for ( NSString * key in [self.additionalHeaders allKeys]){
        [urlRequest addValue:[self.additionalHeaders objectForKey:key]
          forHTTPHeaderField:key];
    }
    
    // adding request headers
    for ( NSString * key in [req.additionalHeaders allKeys]){
        [urlRequest addValue:[req.additionalHeaders objectForKey:key]
          forHTTPHeaderField:key];
    }

    [self sendRequest:req toUrl:urlRequest];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RequestManagerDidSendRequestNotification
                                                        object:req];
}

-(void)sendRequest:(LembasRequest*)req toUrl:(NSURLRequest*)urlRequest{
    
    if ( [req.delegate respondsToSelector:@selector(requestWillStart:)]){
        [req.delegate requestWillStart:req];
    }
    
    __block LembasRequest* __req = req;

    AFHTTPRequestOperation * operation = [self.manager HTTPRequestOperationWithRequest:urlRequest
                                                                          success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                                                              
                                                                              NSHTTPURLResponse * response = operation.response;
                                                                              _NSLog(@"<LEMBAS:%@>:response received", response.URL.path.lastPathComponent);
                                                                              // server response
                                                                              __req.statusCode = [(NSHTTPURLResponse *)response statusCode];
                                                                              __req.requestDuration = [NSDate timeIntervalSinceReferenceDate] - __req.startTime;
                                                                              __req.response = responseObject;
                                                                              
                                                                              
                                                                              if ( __req.statusCode < 200 || req.statusCode > 399 || [__req.response isKindOfClass:[LembasFault class]]){
                                                                                  NSError * error = [[NSError alloc] initWithDomain:@"" code:__req.statusCode userInfo:nil];
                                                                                  [self requestFailure:req withError:error];
                                                                              } else {
                                                                                  
                                                                                  [self requestSuccess:req];
                                                                              }
                                                                          }
                                          
                                                                          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                                                              _NSLog(@"<LEMBAS:%@>:error received", error.localizedDescription);
                                                                              
                                                                              req.statusCode = error.code;
                                                                              [self requestFailure:req withError:error];
                                                                          }];
    
    operation.responseSerializer= [HandsomeResponseSerializer new];
    
    if ([[urlRequest URL].host isEqualToString:@"localhost"]){
        operation.securityPolicy.allowInvalidCertificates = YES;
    }
    
    [self.manager.operationQueue addOperation:operation];
}



//==============================================================================
// called when nsurlconnection is successfuly finished without failure
-(void)requestSuccess:(LembasRequest*) req{
    
    dispatch_async(dispatch_get_main_queue(), ^(){
        
        [[NSNotificationCenter defaultCenter] postNotificationName:RequestManagerDidReceivedResponseNotification
                                                            object:req];
        
        if ( req.completionBlock  != nil){
            LembasRequest * __block _req = req;
            req.completionBlock(_req);
        }
        
        if ([req.delegate respondsToSelector:@selector(requestFinished:withResponse:)]) {
            [req.delegate performSelector:@selector(requestFinished:withResponse:)
                               withObject:req
                           withObject:req.response];
        }
        
    });
}



//==============================================================================
// called when http request is not 200 or HandsomeResult  is not OK
-(void)requestFailure:(LembasRequest *)req withError:(NSError*)error{
    dispatch_async(dispatch_get_main_queue(), ^(){
        
        [[NSNotificationCenter defaultCenter] postNotificationName:RequestManagerDidReceivedResponseNotification
                                                            object:req];
        // call back time
        if (req.failureBlock != nil)
            req.failureBlock(req, error);
        
        if ([req.delegate respondsToSelector:@selector(requestFailed:withError:)])
            [req.delegate performSelector:@selector(requestFailed:withError:)
                               withObject:req
                               withObject:error];

        
    });
}





@end
