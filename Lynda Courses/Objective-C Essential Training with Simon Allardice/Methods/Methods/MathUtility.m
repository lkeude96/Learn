//
//  MathUtility.m
//  Methods
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import "MathUtility.h"

@implementation MathUtility

-(int)timesTen:(int)number {
    NSLog(@"You passed in the value: %i", number);
    return number *10;
    
}

-(int)addNumber:(int)a toNumber:(int)b{
    return a + b;
}

@end
