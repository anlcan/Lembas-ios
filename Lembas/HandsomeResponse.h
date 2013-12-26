//
//  Response.h
//  Runtime
//
//  Created by Anil Can Baykal on 8/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HandsomeObject.h"

@interface HandsomeResponse : HandsomeObject {
    
    NSString * status; 	
}

@property (nonatomic, retain) NSString *status;
@property (nonatomic, retain) HandsomeObject * info;

   
@end

