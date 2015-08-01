//
//  main.m
//  ExistingClasses
//
//  Created by Eude K Lesperance on 10/3/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *msg = @"The quick brown fox jumped over the lazy dog.";
        NSString *allCaps = [msg uppercaseString];
        NSLog(@"The result is: %@", allCaps);
        
        NSDate *today = [NSDate date];
        NSLog(@"The new date object is: %@",today);
    }
    return 0;
}
