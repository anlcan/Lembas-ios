//
//  HandsomeObject.h
//
//  Created by Anil Can Baykal on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HandsomeObject;
@class LoxoService;

typedef void(^HandsomeCallback)(HandsomeObject* object, NSError * error);

@interface HandsomeObject : NSObject{
    
    NSString * objectKey;
    NSString * createDate;
    NSString * updateDate;
        
    void (^_saveSuccessBlock)();
}

@property (nonatomic, assign) LoxoService * service;
@property (nonatomic, copy)  NSString * objectKey;

-(void)store;
-(void)storeInUserDefaults:(NSString *)key;
+(HandsomeObject*)loadFromUserDefaults:(NSString *)key;

@end


//==============================================================================
@interface HandsomeObject (DataStore)

//+(HandsomeObject*)getObject:(NSString *)objectKey;
//
//-(void)save;
//-(void)saveWithCallback:(HandsomeCallback)callback;
//-(void)saveWithTarget:(id)target andSelector:(SEL)selector;
//
//-(void)remove;
//-(void)removeWithTarget:(id)target andSelector:(SEL)selector;

//+(void)listHandsomeObjects:(NSString *)className target:(id)target selector:(SEL)selector;
//+(void)listHandsomeObjects:(NSString *)className complete:(HandsomeUserQueryCallBack)callback;

@end