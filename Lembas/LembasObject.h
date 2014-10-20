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

@property (nonatomic, assign) LoxoService * service;
@property (nonatomic, copy)  NSString * objectKey;

@property (nonatomic, copy)  NSString * createDate;
@property (nonatomic, copy)  NSString * updateDate;


-(void)store;
-(void)storeInUserDefaults:(NSString *)key;
+(LembasObject*)loadFromUserDefaults:(NSString *)key;

@end


//==============================================================================
@interface LembasObject (DataStore)

//+(LembasObject*)getObject:(NSString *)objectKey;
//
//-(void)save;
//-(void)saveWithCallback:(LembasCallback)callback;
//-(void)saveWithTarget:(id)target andSelector:(SEL)selector;
//
//-(void)remove;
//-(void)removeWithTarget:(id)target andSelector:(SEL)selector;

//+(void)listLembasObjects:(NSString *)className target:(id)target selector:(SEL)selector;
//+(void)listLembasObjects:(NSString *)className complete:(HandsomeUserQueryCallBack)callback;

@end