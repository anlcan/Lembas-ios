//
//  HandsomeObject.h
//
//  Created by Anil Can Baykal on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LembasObject;
@class LoxoService;

typedef void(^LembasCallback)(LembasObject* object, NSError * error);

@interface LembasObject : NSObject{
    
        
    void (^_saveSuccessBlock)();
}

@property (nonatomic, copy)  NSString * objectKey;


-(void)store;
-(void)storeInUserDefaults:(NSString *)key;
+(LembasObject*)loadFromUserDefaults:(NSString *)key;

@end


