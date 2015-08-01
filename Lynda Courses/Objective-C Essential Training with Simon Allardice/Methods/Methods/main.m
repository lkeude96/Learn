//
//  main.m
//  Methods
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MathUtility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MathUtility *util = [[MathUtility alloc] init];
        
        int result = [util timesTen:55];
        NSLog(@"The result of timesTen: - %i", result);
        
        result = [util addNumber:99 toNumber:42];
        NSLog(@"The result of addNumber:toNumber: - %i", result);
    }
    return 0;
}
