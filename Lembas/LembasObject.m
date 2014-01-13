//
//  HandsomeObject.m
//
//  Created by Anil Can Baykal on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LembasObject.h"
#import "NSObject+Marshall.h"
#import "LoxoService.h"

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
            NSLog(@"failed to load HandsomeObject from store:%@",key);
    }
    
    return nil;
}


-(NSString *)description{
    return [[NSObject serialize:self] description];
}

- (void)dealloc{
}


@end

//==============================================================================
@implementation LembasObject (DataStore)

-(NSString *)urlWithService:(NSString *)service method:(NSString *)method{
    NSString * urlPath = [NSString stringWithFormat:@"%@%@/%@",_service.host, @"DataService", @"saveObject" ];
    return urlPath;
}



//==============================================================================
// GET
+(LembasObject*)getObject:(NSString *)objectKey{
    return nil; 
    
}

//==============================================================================
// SAVE
-(void)save{
    [self saveWithTarget:nil andSelector:nil];
}

-(void)saveWithCallback:(HandsomeCallback)callback{
    [self saveWithTarget:nil andSelector:nil];
}


-(void)saveWithTarget:(id)target andSelector:(SEL)selector{
    
    NSString * urlPath = [self urlWithService:@"DataStore" method:@"saveObject"];
    NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urlPath]];
    [request setHTTPMethod:@"POST"];
    
    [request addValue:@"application/json; charset=utf-8"
      forHTTPHeaderField:@"Content-Type"];
    NSDictionary * json = [NSObject serialize:self];
    NSError * error = nil;
    
    [request setHTTPBody:[NSJSONSerialization dataWithJSONObject:json options:NSJSONWritingPrettyPrinted error:&error]];
    if ( error != nil) {
        NSLog(@"failed to serialize HandsomeObject %@: %@\nAborting...",self, error.localizedDescription);
        return;
    }    
    
    [NSURLConnection sendAsynchronousRequest:request queue:_service.queue completionHandler:^(NSURLResponse * response, NSData* data, NSError*error){
        // deserialize jsonstring
        if ( [(NSHTTPURLResponse*)response statusCode] == 200) {
        
            NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:data
                                                                  options:0
                                                                    error:nil];
            
            _NSLog(@"<HANDSOME:%@>:response received", dict);
        } else {
            NSString * result = [NSString stringWithUTF8String:data.bytes];
            _NSLog(@"<HANDSOME> response failed %@", result);
        }

    }];}

@end