//
//  main.m
//  FunctionStarter
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>


void myFunction(void) {
    // a simple loop
    for (int i = 1; i < 5000; i++) {
        if (i % 5 == 0) {
            continue;  // jump back to the top.
        }
        NSLog(@"The value of the index is %i", i);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        myFunction();
        
    }
    return 0;
}
