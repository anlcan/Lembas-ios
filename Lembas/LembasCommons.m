//
//  LembasCommons.m
//  LembasLibrary
//
//  Created by Anil Can Baykal on 1/31/13.
//
//

#import "LembasCommons.h"
#import "LembasUtil.h"

//==============================================================================
#pragma mark MDate

@implementation LembasDate
@synthesize date;
@synthesize time;
@synthesize zone;

-(NSDate*)nsdate{
    return [LembasUtil dateFromMdate:self];
}

-(void)dealloc{
    
	date = nil;
    time = nil;
	zone = nil;
}
@end


//==============================================================================
#pragma mark InnerFault
@implementation LembasFault

@synthesize stacktrace;
@synthesize message;
@synthesize exceptionName;
@synthesize visibleMessage;



-(void)dealloc{
    
	stacktrace = nil;
	message = nil;
	exceptionName = nil;
	visibleMessage = nil;
}

@end

//==============================================================================
@interface MFile ()

@property (nonatomic, copy)NSString * dataUrlPath;
@end

@implementation MFile
@synthesize data;
@synthesize dataAvailable;

-(NSData*)getDataInBackground{
    
    if ([NSThread currentThread] == [NSThread mainThread]){
        NSLog(@"Loxodonta:calling background task from main thread");
    }
    
    self.data = [NSData dataWithContentsOfURL:[NSURL URLWithString:self.dataUrlPath]];
    return data;
}

@end