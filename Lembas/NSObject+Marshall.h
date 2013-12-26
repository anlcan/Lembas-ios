//
//  NSObject+Marshall.h
//  Runtime
//
//  Created by Anil Can Baykal on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <objc/runtime.h>
#import "Debug.h"

#define	LOG_DESERIALIZE	NO
#define	LOG_SERIALIZE	NO
#define LOG_EMPTY		NO
#define LOG_EXCEPTION	YES

extern  NSString * typeIdentifier;

@interface Marshall :NSObject

+(id) deserialize:(NSDictionary*)payload;
+(NSDictionary*) serialize:(id)value;

@end

@interface NSObject  (Marshall) 

+(id) deserialize:(NSDictionary*)payload; 
+(NSDictionary*) serialize:(id)value; 

@end
