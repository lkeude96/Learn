//
//  Player.m
//  DefiningClasses
//
//  Created by Eude K Lesperance on 10/3/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import "Player.h"

@implementation Player



-(void)jump {
    NSLog(@"Woooh!");
}
-(void)fire {
    NSLog(@"Pew Pew!");
}
-(void)restartLevel:(int)levelNumber {
    NSLog(@"Restarting the number %i level", levelNumber);
}
@end
