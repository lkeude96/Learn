//
//  main.m
//  NumericTypes
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        long long int myLongLongInterger = 5000000000;
        long long myOtherLongLongInterger= 6000000000; // still a long long int
        
        unsigned int myUnsignedInterger = 99;
        unsigned myOtherUnsignedInterger = 99; // still a unsigned int
        
        // using this in format strings
        // %lli for long long ints
        NSLog(@"My long long intergers are %lli and %lli", myLongLongInterger, myOtherLongLongInterger);
        // %u for unsigned ints
        NSLog(@"My unsigned intergers are %u and %u", myUnsignedInterger, myOtherUnsignedInterger);
        
        // ints will simply truncate without warning.
        int nearlyFive = 4.9999999;
        NSLog(@"The value of nearlyfive is: %i", nearlyFive);
        // this also happens for calculations
        int myResult = 10 / 4;
        NSLog(@"The result of my division is : %i", myResult);
        
        // defining a float
        float myFloat = 33.3f;
        NSLog(@"myFloat is: %f", myFloat);
        NSLog(@"myFloat is: %e", myFloat);
        NSLog(@"myFloat is: %g", myFloat);
        // defining a double
        double myDouble = 33.3;
        // same as float
        NSLog(@"myDouble is: %f", myDouble);
        NSLog(@"myDouble is: %e", myDouble);
        NSLog(@"myDouble is: %g", myDouble);
    }
    return 0;
}
