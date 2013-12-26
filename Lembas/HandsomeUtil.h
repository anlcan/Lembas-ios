//
//  HandsomeUtil.h
//  HandsomeLibrary
//
//  Created by Anil Can Baykal on 11/23/12.
//
//

#import <Foundation/Foundation.h>

#include <sys/types.h>
#include <sys/sysctl.h>

#include "HandsomeCommons.h"
/*
#import <CoreTelephony/CTCarrier.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
*/
@interface HandsomeUtil : NSObject

@property (nonatomic, retain) NSDateFormatter * timeFormatter;
@property (nonatomic, retain) NSDateFormatter * dateFormatter;


// UTIL METHODS
+(NSString *)generateUuidString;
+(NSString *)getApplicationVersion;
+(NSString *)getApplicationName;
+(NSString *)getPlatform;
//+(CTCarrier*)getCarrierInfo;


//==============================================================================
// MDATE
+(NSDate*)dateFromMdate:(MDate*)mdate;
+(MDate*)mdateFromDate:(NSDate*)date;
+(MDate*)now;


@end
