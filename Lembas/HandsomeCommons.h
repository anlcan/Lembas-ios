//
//  HandsomeCommons.h
//  HandsomeLibrary
//
//  Created by Anil Can Baykal on 1/31/13.
//
//

#import <Foundation/Foundation.h>
#import "HandsomeObject.h"
#import "HandsomeResponse.h"

//==============================================================================
@interface MDate : HandsomeObject {
    
}
@property(nonatomic, retain) NSString * date;
@property(nonatomic, retain) NSString * time;
@property(nonatomic, retain) NSString * zone;

-(NSDate*)nsdate;
@end


//==============================================================================
@interface InnerFault : HandsomeResponse {
    
}
@property(nonatomic, retain) NSString * stacktrace;
@property(nonatomic, retain) NSString * message;
@property(nonatomic, retain) NSString * exceptionName;
@property(nonatomic, retain) NSString * visibleMessage;


@end


//==============================================================================
@interface MFile : HandsomeObject {
    
}
@property (nonatomic, retain) NSData * data;
@property (nonatomic, assign, getter = isDataAvailable) BOOL dataAvailable;



@end