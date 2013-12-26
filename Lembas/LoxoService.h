//
//  LoxoService.h
//  Loxodonta iOS Library
//
//  Created by Anil Can Baykal on 4/9/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HandsomeRequest.h"
#import "HandsomeResponse.h"
#import "HandsomeCommons.h"
#import "HandsomeObject.h"

@interface LoxoService : NSObject {
    NSString * _host;
    NSString * _projectId;
    NSOperationQueue 	* _queue;
}

@property (nonatomic, copy) NSString * projectId;
@property (nonatomic, copy) NSString * host;
@property (nonatomic, strong) NSOperationQueue * queue;


@end
