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
@interface HBDViewController ()<HandsomeRequestDelegate>

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
    request.tckNo = @"45062572021";
    
    request.completionBlock = ^(HandsomeRequest* req){
        
        LoginResponse * response = (LoginResponse*)req.response;
        _NSLog(@"%@",response.merchant);
    };
    
    request.failureBlock =^(HandsomeRequest* req, NSError * error){
        
        _NSLog(@"%@",error);
    };
    
    [request run];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
