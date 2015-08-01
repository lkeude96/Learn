//
//  main.m
//  DefiningClasses
//
//  Created by Eude K Lesperance on 10/3/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *bob = [[Player alloc]init];
        
        [bob jump];
        [bob fire];
        [bob restartLevel:99];
        
        [bob setScore:10000];
        [bob setPlayerName:@"Bob the Invincible"];
        NSLog(@"Player name is: %@ and score is: %i", [bob playerName], [bob score]);
    }
    return 0;
}
