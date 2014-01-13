//
//  HandsomeObject.h
//
//  Created by Anil Can Baykal on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LembasObject;
@class LoxoService;

typedef void(^HandsomeCallback)(LembasObject* object, NSError * error);

@interface LembasObject : NSObject{
    
    NSString * objectKey;
    NSString * createDate;
    NSString * updateDate;
        
    void (^_saveSuccessBlock)();
}

@property (nonatomic, assign) LoxoService * service;
@property (nonatomic, copy)  NSString * objectKey;

-(void)store;
-(void)storeInUserDefaults:(NSString *)key;
+(LembasObject*)loadFromUserDefaults:(NSString *)key;

@end


//==============================================================================
@interface LembasObject (DataStore)

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