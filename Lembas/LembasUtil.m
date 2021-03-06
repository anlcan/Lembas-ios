//
//  LembasUtil.m
//  LembasLibrary
//
//  Created by Anil Can Baykal on 11/23/12.
//
//

#import "LembasUtil.h"
#import "Debug.h"

@implementation LembasUtil

+(LembasUtil*)shared{
    
    static LembasUtil *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[LembasUtil alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    if (self) {
        
        self.mdateFormatter = [[NSDateFormatter alloc] init];
        [self.mdateFormatter setDateFormat:@"HH:mm:ss dd/MM/yyyyZ"];
        
        self.dateFormatter = [[NSDateFormatter alloc] init];
        [self.dateFormatter setDateFormat:@"dd/MM/yyyy"];
        
        self.timeFormatter = [[NSDateFormatter alloc] init];
        [self.timeFormatter setDateFormat:@"HH:mm:ss"];
        
        self.zoneFormatter = [[NSDateFormatter alloc] init];
        [self.zoneFormatter setDateFormat:@"Z"];
        
        
    }
    return self;
}


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
+(LembasDate*)mdateFromDate:(NSDate*)date{
    
    LembasDate * result = [LembasDate new];
    result.time = [[LembasUtil shared].timeFormatter stringFromDate:date];
    result.date = [[LembasUtil shared].dateFormatter stringFromDate:date];
    result.zone = [[LembasUtil shared].zoneFormatter stringFromDate:date];
    
    return result;
}

+(NSDate*)dateFromMdate:(LembasDate*)mdate{
    
    NSString * dateString = [NSString stringWithFormat:@"%@ %@%@",
                             mdate.time, mdate.date, mdate.zone];
    
    NSDate* date = [[LembasUtil shared].mdateFormatter dateFromString:dateString];
    return date;
}

+(LembasDate*)now{
    return [self mdateFromDate:[NSDate date]];
}

@end
