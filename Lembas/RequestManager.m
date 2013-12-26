///  RequestManager.m
//  Runtime
//
//  Created by Anil Can Baykal on 8/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RequestManager.h"
#import "HandsomeUtil.h"

//==============================================================================
@implementation HandsomeResponseSerializer

- (id)responseObjectForResponse:(NSURLResponse *)response
                           data:(NSData *)data
                          error:(NSError *__autoreleasing *)error{
    
    
    // deserialize jsonstring
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:data
                                                          options:0
                                                            error:nil];
    
    HandsomeResponse * res = nil;
    NSString * resultKey 	= @"Result";
    NSString * errorKey 	= @"Error";
    
    NSDictionary * result = [dict objectForKey:resultKey];
    if ( result != nil)
    	res = [NSObject deserialize:result];
    else if ( [dict objectForKey:errorKey]) {
        res = [NSObject deserialize:[dict objectForKey:errorKey]];
        
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

-(void)requestSuccess:(HandsomeRequest*) req;
-(void)requestFailure:(HandsomeRequest *)req withError:(NSError*)error;

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
        
        self.session = [HandsomeUtil generateUuidString];
        registerId = [[NSUserDefaults standardUserDefaults] objectForKey:registerIdKey];
               
        
        // Initialization code here.
        queue = [[NSOperationQueue alloc] init];
        [queue setMaxConcurrentOperationCount:1];
        
        //self.userAgent = [[NSUserDefaults standardUserDefaults] objectForKey:userAgentKey];
        //if ( self.userAgent == nil)
        [self discoverUserAgent];
        
        requestCache = [NSMutableDictionary new];        
    }
    
    return self;
}

- (void)dealloc {
    
    queue = nil;
    requestCache = nil;
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
- (void) addRequest:(HandsomeRequest*) req {
	// must be present on run time;
    req.session 	= self.session;
        
    req.startTime = [NSDate timeIntervalSinceReferenceDate];
    //req.deviceId = [[HandsomeManager shared] deviceId];
    
    // target address
    NSURL * host = [req getHost]; 
    _ASSERT(nil!= host);
    NSURL * url = [host URLByAppendingPathComponent:req.verb]; 
	
	
    NSString * handsome_time = [NSString stringWithFormat:@"%.0f", [NSDate timeIntervalSinceReferenceDate]];
    
	NSString * key 		= @"request";         
	NSDictionary * data = [NSObject serialize:req];
     	
	NSDictionary * dict = [NSDictionary dictionaryWithObjectsAndKeys:data, key,  nil]; 
	//NSData * output = [[CJSONSerializer serializer] serializeDictionary:dict error:&erol];
    //NSData * output = [dict JSONData];
    NSData * output = [NSJSONSerialization dataWithJSONObject:dict
                                                      options:NSJSONWritingPrettyPrinted
                                                        error:nil];

	_NSLog(@"\n//==============================================================================\n%@ -> \n|%@|\n",url,
          [NSString stringWithCString:output.bytes encoding:NSUTF8StringEncoding]);


    NSMutableURLRequest * urlRequest = [NSMutableURLRequest requestWithURL:url];
    [urlRequest setHTTPMethod:@"POST"];
    
    [urlRequest addValue:@"application/json; charset=utf-8"
      forHTTPHeaderField:@"Content-Type"];
    
    [urlRequest addValue:handsome_time
      forHTTPHeaderField:HANDSOME_HEADER_TIME];
    
    
    [urlRequest addValue:@"iOS"
      forHTTPHeaderField:HANDSOME_HEADER_SOURCE];

#ifdef VERSION
    
    // IF  YOU WANT TO UPDATE VERSION GOTO **build.sh**
    NSString * VERSION_STRING = @"" MACRO_VALUE_TO_STRING(VERSION) "";
    [urlRequest addValue:VERSION_STRING
      forHTTPHeaderField:HANDSOME_HEADER_VERSION];
#endif
    
        
#ifdef TOKEN
    // token to hash
    NSString * tokenSource = [NSString stringWithFormat:@"%@%@%@",handsome_time,req.session,req.verb];
    
    [urlRequest addValue:tokenSource
      forHTTPHeaderField:@"x-handsome-tokensource"];
#endif
        
    //if (self.userAgent)
    [urlRequest addValue:self.userAgent forHTTPHeaderField:@"User-Agent"];
    
#ifdef DEBUG
    [urlRequest setTimeoutInterval:75];
#else
    [urlRequest setTimeoutInterval:45];
#endif

    [urlRequest setHTTPBody:output];



        [self sendRequest:req toUrl:urlRequest];

    
}

-(void)sendRequest:(HandsomeRequest*)req toUrl:(NSURLRequest*)urlRequest{
   
    
    __block HandsomeRequest* __req = req;
    AFHTTPRequestOperation * operation = [[AFHTTPRequestOperationManager manager] HTTPRequestOperationWithRequest:urlRequest
                                                                                                          success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                                                                                              
                                                                                                              NSHTTPURLResponse * response = operation.response;
                                                                                                              _NSLog(@"<HANDSOME:%@>:response received", response.URL.path.lastPathComponent);
                                                                                                              // server response
                                                                                                              __req.statusCode = [(NSHTTPURLResponse *)response statusCode];
                                                                                                              
                                                                                                              __req.requestDuration = [NSDate timeIntervalSinceReferenceDate] - __req.startTime;
                                                                                                              
                                                                                                              __req.response = responseObject;
                                                                                                              if ( __req.statusCode == 212){
                                                                                                                  NSError * error = [[NSError alloc] initWithDomain:@"" code:212 userInfo:nil];
                                                                                                                  [self requestFailure:req withError:error];
                                                                                                              } else {
                                                                                                              
                                                                                                                  [self requestSuccess:req];
                                                                                                              }
                                                                                                              
                                                                                                          }
                                          
                                                                                                          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                                                                                              _NSLog(@"<HANDSOME:%@>:error received", error.localizedDescription);
                                                                                                              
                                                                                                              req.statusCode = error.code;
                                                                                                              [self requestFailure:req withError:error];
                                                                                                          }];
    
    operation.responseSerializer= [HandsomeResponseSerializer new];
    
    if ( self.useSynchronousForTesting ){
        [operation start];
    } else {
    
        [[AFHTTPRequestOperationManager manager].operationQueue addOperation:operation];
    }
}

-(void)addCertificate:(NSString *)name{
    NSString *certPath = [[NSBundle mainBundle] pathForResource:name ofType:@"cer"];
    NSCAssert(certPath != nil, @"Path for certificate should not be nil");
    NSData *certData = [NSData dataWithContentsOfFile:certPath];
    
    SecCertificateRef certificate = SecCertificateCreateWithData(NULL, (__bridge CFDataRef)(certData));
    
    AFSecurityPolicy * policy = [[AFSecurityPolicy alloc] init];
    [policy setPinnedCertificates:@[(__bridge_transfer NSData *)SecCertificateCopyData(certificate)]];
    policy.SSLPinningMode = AFSSLPinningModeCertificate;
    
    [AFHTTPRequestOperationManager manager].securityPolicy = policy;
    
}

//==============================================================================
// called when nsurlconnection is successfuly finished without failure
-(void)requestSuccess:(HandsomeRequest*) req{
    
    dispatch_async(dispatch_get_main_queue(), ^(){
        
        
        if ( req.completionBlock  != nil){
            HandsomeRequest * __block _req = req;
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
-(void)requestFailure:(HandsomeRequest *)req withError:(NSError*)error{
    dispatch_async(dispatch_get_main_queue(), ^(){
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
