//
//  Request.m
//  Runtime
//
//  Created by Anil Can Baykal on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LembasRequest.h"
#import "RequestManager.h"
#import "LoxoService.h"

@implementation LembasRequest

@synthesize failureBlock = __failureBlock;
@synthesize completionBlock = __completionBlock;

@synthesize deviceId;

@synthesize registerId, session, verb;
@synthesize response;
@synthesize httpRequest = __httpRequest;
@synthesize delegate 	= __delegate;


- (id)initWithDelegate:(id<LembasRequestDelegate>)d {
	
    self = [super init];
    
    if (self) {
    	
        self.delegate = d;
        self.additionalHeaders = [NSMutableDictionary dictionaryWithCapacity:0];
    }
    
    return self;
}



-(NSString*)verb{
	
	// extracting verb from class name... in case it's missing
	if ( verb == nil ) {
		_NSLog(@"missing request verb..");
		NSString * c = [NSString stringWithCString:class_getName([self class]) 
										  encoding:NSUTF8StringEncoding];
        self.verb = [c substringToIndex:[c length] - [@"Request" length]]; 
    }
	
    return verb; 
}

- (void)dealloc {
    
    NSLog(@"\n\n*******releasing request: %@\n\n",self.verb);
    self.delegate  = nil;     
    
    self.session 	= nil;
    self.registerId = nil;
    self.verb 		= nil;
    
}

-(void) cancel{
    
    _NSLog(@"cancelling request %@", self);
    self.completionBlock = nil;
    self.failureBlock = nil;
    [__httpRequest cancel];;
    __httpRequest = nil;
    
}

- (void)run{
        
	[[RequestManager sharedManager] addRequest:self];
}
-(void)done{
    __completionBlock 	= nil;
    __failureBlock 		= nil;

}

-(void)setEndPointHost:(NSString *)aHost{
    host = [aHost copy];
}

- (NSURL*) getHost{
    if ( host != nil)
        return [NSURL URLWithString:host];
    else
        return  [NSURL URLWithString:self.service.host];

    
}


-(LembasResponse*)getHandsomeResponse{
    return response; 
}

-(NSString *)getCacheToken{
    return __token;
}



@end
