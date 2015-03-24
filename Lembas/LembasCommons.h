//
//  LembasCommons.h
//  LembasLibrary
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
/**
 * date in format :dd/MM/yyyy
 */
@property(nonatomic, strong) NSString * date;
/**
 * time in format HH:mm:ss
 */
@property(nonatomic, strong) NSString * time;
/**
 * zone in format : Z
 */
@property(nonatomic, strong) NSString * zone;
/**
 * returns the nsdate created by this lembasdate
 */
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

