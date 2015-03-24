//
//  LembasUtil.h
//  LembasLibrary
//
//  Created by Anil Can Baykal on 11/23/12.
//
//

#import <Foundation/Foundation.h>

#include <sys/types.h>
#include <sys/sysctl.h>

#include "LembasCommons.h"


@interface LembasUtil : NSObject

@property (nonatomic, retain) NSDateFormatter * timeFormatter;
@property (nonatomic, retain) NSDateFormatter * mdateFormatter;
@property (nonatomic, retain) NSDateFormatter * dateFormatter;
@property (nonatomic, retain) NSDateFormatter * zoneFormatter;

// UTIL METHODS
+(NSString *)generateUuidString;
+(NSString *)getApplicationVersion;
+(NSString *)getApplicationName;
+(NSString *)getPlatform;



//==============================================================================
// MDATE
+(NSDate*)dateFromMdate:(LembasDate*)mdate;
+(LembasDate*)mdateFromDate:(NSDate*)date;
+(LembasDate*)now;


@end
