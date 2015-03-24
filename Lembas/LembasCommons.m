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


-(NSDate*)nsdate{
    return [LembasUtil dateFromMdate:self];
}


@end


//==============================================================================
#pragma mark InnerFault
@implementation LembasFault


@end
