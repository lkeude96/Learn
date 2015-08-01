//
//  main.m
//  PointerExample
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

void myFunction (NSString* x) {
    NSLog(@"The string you passed in was %@", x);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // doesn't matter where the * goes
        // NSString *firstWord = @"one";
        // NSString * secondWord = @"large";
        
        NSString* thirdWord;
        thirdWord = @"pomegranate";
        
        // call the function
        myFunction(thirdWord);
    }
    return 0;
}
