//
//  Player.m
//  initializerDemo
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void)dealloc
{
    //CLOSE the connection to the database
    NSLog(@"The dealloc method is called automatically.");
    
}

- (id)init
{
    self =[self initWithInterger:5000];
    return self;
}

- (id)initWithInterger:(int) initialScore
{
    // OPEN a connection to a database
    
    self = [super init];
    if (self) {
        // custom
        _score = initialScore;
    }
    return self;
}

@end
