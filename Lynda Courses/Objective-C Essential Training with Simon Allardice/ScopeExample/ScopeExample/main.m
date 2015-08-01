//
//  main.m
//  ScopeExample
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // local scope: available anywhere inside main
    int numberOfProblems = 99;
    
    
    @autoreleasepool {
        for (int i = 1; i < 1000; i++) {
            // losts of code
            // some variable creation
            int foo = 55;  // local scope: only available inside this for loop
            foo ++;
            // some more interesting code
            // if I use "int", I'm creating a NEW local variable
            int numberOfProblems = 0;
            numberOfProblems++;
            NSLog(@"Number of problems: %i", numberOfProblems);
            
        }
        
        // what's the value of foo?
        // NSLog(@"foo is now %i", foo);
    }
    return 0;
}
