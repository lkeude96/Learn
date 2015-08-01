//
//  main.m
//  BasicArrays
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // define an array of 5 ints
        int multipleValues[5] = {10, 100, 1000, 10000, 100000};
        
        int x = 99;
        
        NSLog(@"The value of the element is %i", multipleValues[x]);
        
        NSString *myStringArray[5] = {@"first", @"second", @"third", @"fourth", @"fifth"};
        
        NSLog(@"The third string element is %@", myStringArray[2]);
    }
    return 0;
}
