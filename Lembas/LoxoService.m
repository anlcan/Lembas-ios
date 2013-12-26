//
//  LoxoService.m
//  Loxodonta iOS Library
//
//  Created by Anil Can Baykal on 4/9/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "LoxoService.h"

@implementation LoxoService

@synthesize host 		= _host;
@synthesize projectId 	= _projectId;
@synthesize queue		= _queue;

- (id)init
{
    self = [super init];
    if (self) {
        
        _queue = [[NSOperationQueue alloc] init];
        [_queue setMaxConcurrentOperationCount:3];
    }
    return self;
}

- (void)dealloc{
    _queue = nil;
}

@end
