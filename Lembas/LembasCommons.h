//
//  HandsomeCommons.h
//  HandsomeLibrary
//
//  Created by Anil Can Baykal on 1/31/13.
//
//

#import <Foundation/Foundation.h>
#import "LembasObject.h"
#import "LembasResponse.h"

//==============================================================================
@interface LembasDate : LembasObject {
    
}
@property(nonatomic, retain) NSString * date;
@property(nonatomic, retain) NSString * time;
@property(nonatomic, retain) NSString * zone;

-(NSDate*)nsdate;
@end


//==============================================================================
@interface LembasFault : LembasResponse {
    
}
@property(nonatomic, retain) NSString * stacktrace;
@property(nonatomic, retain) NSString * message;
@property(nonatomic, retain) NSString * exceptionName;
@property(nonatomic, retain) NSString * visibleMessage;


@end


//==============================================================================
@interface MFile : LembasObject {
    
}
@property (nonatomic, retain) NSData * data;
@property (nonatomic, assign, getter = isDataAvailable) BOOL dataAvailable;



@end