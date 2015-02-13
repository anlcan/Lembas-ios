//
//  LembasObject.m
//
//  Created by Anil Can Baykal on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LembasObject.h"
#import "NSObject+Marshall.h"
#import "LembasService.h"

//==============================================================================
@interface LembasObject()
    


@end


//==============================================================================
@implementation LembasObject
@synthesize objectKey = objectKey;

- (id)init
{
    self = [super init];
    if (self) {
            
    }
    
    return self;
}

-(void)store{
    if ( nil != self.objectKey) {
        [self storeInUserDefaults:self.objectKey];
    }else {
        NSAssert(false,@"cannot store null key object: %@", self);
    }
}

-(void)storeInUserDefaults:(NSString *)key{
    
    NSDictionary * dict = [NSObject serialize:self];
    NSData * rawData 	= [NSJSONSerialization dataWithJSONObject:dict options:0 error:nil];
    
    [[NSUserDefaults standardUserDefaults] setObject:rawData forKey:key];
}

+(LembasObject*)loadFromUserDefaults:(NSString *)key{
    
    NSData * rawData = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if ( rawData != nil){
        NSError * error = nil;
        NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:rawData
                                                              options:NSJSONReadingMutableContainers
                                                                error:&error];        
        if ( error == nil)
            return [NSObject deserialize:dict];
        else
            NSLog(@"failed to load LembasObject from store:%@",key);
    }
    
    return nil;
}


-(NSString *)description{
    return [[NSObject serialize:self] description];
}

- (void)dealloc{
}


@end


