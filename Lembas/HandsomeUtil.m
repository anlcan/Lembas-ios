//
//  HandsomeUtil.m
//  HandsomeLibrary
//
//  Created by Anil Can Baykal on 11/23/12.
//
//

#import "HandsomeUtil.h"
#import "Debug.h"

@implementation HandsomeUtil

+(HandsomeUtil*)shared{
    
    static HandsomeUtil *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[HandsomeUtil alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    if (self) {
        
        self.dateFormatter = [[NSDateFormatter alloc] init];
        NSString *dateFormat = @"HH:mm:ss dd/MM/yyyyZ";
        [self.dateFormatter setDateFormat:dateFormat];
    }
    return self;
}
/*
//==============================================================================
+(CTCarrier*) getCarrierInfo{
    
    // Setup the Network Info and create a CTCarrier object
    CTTelephonyNetworkInfo *networkInfo = [[[CTTelephonyNetworkInfo alloc] init] autorelease];
    CTCarrier *carrier = [networkInfo subscriberCellularProvider];
    
    // Get carrier name
    NSString *carrierName = [carrier carrierName];
    if (carrierName != nil)
        _NSLog(@"Carrier: %@", carrierName);
    
    // Get mobile country code
    NSString *mcc = [carrier mobileCountryCode];
    if (mcc != nil)
        _NSLog(@"Mobile Country Code (MCC): %@", mcc);
    
    // Get mobile network code
    NSString *mnc = [carrier mobileNetworkCode];
    if (mnc != nil)
        _NSLog(@"Mobile Network Code (MNC): %@", mnc);
    
    return carrier;
}
 */

+ (NSString *) getPlatform {
    
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    
    return platform;
}

+(NSString *) getApplicationName{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
}

+(NSString *)getApplicationVersion{
    NSString * version = [NSString stringWithFormat:@"%@.%@",
                          [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"],
                          [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]];
    return version;
}

// return a new autoreleased UUID string
+(NSString *)generateUuidString {
    // create a new UUID which you own
    CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
    
    // create a new CFStringRef (toll-free bridged to NSString)
    // that you own
    NSString *uuidString = (NSString *)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, uuid));

    // release the UUID
    CFRelease(uuid);
    
    return uuidString;
}

//==============================================================================
#pragma mark MDATE
+(MDate*)mdateFromDate:(NSDate*)date{
    
    MDate * result = [MDate new];
    result.time = [[HandsomeUtil shared].timeFormatter stringFromDate:date];
    result.date = [[HandsomeUtil shared].dateFormatter stringFromDate:date];
    
    return result;
}

+(NSDate*)dateFromMdate:(MDate*)mdate{
    
    NSString * dateString = [NSString stringWithFormat:@"%@ %@%@",
                             mdate.time, mdate.date, mdate.zone];
    
    NSDate* date = [[HandsomeUtil shared].dateFormatter dateFromString:dateString];
    return date;
}

+(MDate*)now{
    return [self mdateFromDate:[NSDate date]];
}

@end
