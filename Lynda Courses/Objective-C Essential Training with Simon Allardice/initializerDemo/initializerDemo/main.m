//
//  main.m
//  initializerDemo
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *playerObject = [[Player alloc] init];
        NSLog(@"The score is %i", [playerObject score]);
        
        Player *secondPlayer = [[Player alloc] initWithInterger:9999];
        NSLog(@"The score is %i", [secondPlayer score]);
    }
    return 0;
}
