//
//  NSString+FormattingOptions.m
//  CategoryDemo
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import "NSString+FormattingOptions.h"

@implementation NSString (FormattingOptions)

-(NSString *)convertWhiteSpace {
    NSString *newString = [self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    return newString;
}

@end
