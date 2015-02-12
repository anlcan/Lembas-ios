//
//  HBDLembasTestTests.m
//  HBDLembasTestTests
//
//  Created by Anil Can Baykal on 12/24/13.
//  Copyright (c) 2013 Anil Can Baykal. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OdeAl.h"
#import "RequestManager.h"
#import "LembasTestRequest.h"

@interface HBDLembasTestTests : XCTestCase <LembasRequestDelegate>

@end

@implementation HBDLembasTestTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    LembasTestRequest * request = [[LembasTestRequest alloc] initWithDelegate:self];
    request.cancel = YES;
    
    NSString * marshalled = [[NSObject serialize:request] description];
    NSLog(@"%@", marshalled);
    
//    [RequestManager sharedManager].useSynchronousForTesting = YES;
//    
//    LoginRequest * request = [[LoginRequest alloc] initWithDelegate:self];
//    request.password = @"a4324d2e97b91753605eb8cc44e883c002da2285b92eb1dd591e6399be788e6d";
//    request.tckNo = @"15763721406";
//    
//    request.completionBlock = ^(LembasRequest* req){
//        
//        LoginResponse * response = (LoginResponse*)req.response;
//        _NSLog(@"%@",response.merchant);
//    };
//    
//    request.failureBlock =^(LembasRequest* req, NSError * error){
//        
//        _NSLog(@"%@",error);
//    };
//    
//    
//    [request run];
    
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}


-(void)requestWillStart:(LembasRequest *)req{
    _NSLog(@"%@",req);
}

-(void)requestFinished:(LembasRequest *)req withResponse:(LembasResponse *)resp{
    _NSLog(@"%@",req);
}

@end
