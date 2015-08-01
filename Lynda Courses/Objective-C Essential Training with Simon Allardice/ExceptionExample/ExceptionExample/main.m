//
//  main.m
//  ExceptionExample
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id today = [[NSDate alloc] init];
        [today uppercaseString];
        @try {
            id today = [[NSDate alloc] init];
            [today uppercaseString];
        }
        @catch (NSException *exception) {
            NSLog(@"The exception was: %@", exception);
        }
        @finally {
            NSLog(@"finally will always be called.");
            // close any resources being used
        }
    }
    return 0;
}
