//
//  HBDViewController.m
//  HBDLembasTest
//
//  Created by Anil Can Baykal on 12/24/13.
//  Copyright (c) 2013 Anil Can Baykal. All rights reserved.
//

#import "HBDViewController.h"
#import "OdeAl.h"
#import "RequestManager.h"
@interface HBDViewController ()<LembasRequestDelegate>

@end

@implementation HBDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    
    //[RequestManager sharedManager].useSynchronousForTesting = YES;
    
    
    LoginRequest * request = [[LoginRequest alloc] initWithDelegate:self];
    request.password = @"a4324d2e97b91753605eb8cc44e883c002da2285b92eb1dd591e6399be788e6d";
    request.tckNo = @"35666140762";    
    [request.additionalHeaders setObject:@"FUCK YEAH" forKey:@"X-TELERA-OH-YEAH"];
    
    request.completionBlock = ^(LembasRequest* req){
        
        LoginResponse * response = (LoginResponse*)req.response;
        _NSLog(@"%@",response.merchant);
        
        RecentPaymentsRequest * payments = [[RecentPaymentsRequest alloc] initWithDelegate:self];
        payments.merchantKey = response.merchant.objectKey;
        
        [payments run];
    };
    
    request.failureBlock =^(LembasRequest* req, NSError * error){
        
        _NSLog(@"%@",error);
    };
    
//    [request setEndPointHost:@"http://localhost:8888/OdeAl"];
    [request run];
    
//    LoginRequest * request2 = [[LoginRequest alloc] initWithDelegate:self];
//    [request2 run];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
