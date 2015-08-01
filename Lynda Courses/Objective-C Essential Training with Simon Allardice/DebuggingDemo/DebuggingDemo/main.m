//
//  main.m
//  DebuggingDemo
//
//  Created by Simon Allardice on 11/3/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleClass.h"

void simpleFunction() {
    int a = 99;
    int b = 100;
    int c = a + b;
    NSLog(@"In the simple function, writing out %i", c);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create some local variables
        int a = 100, b = 200;
        a = a + b;
        
        // create some built-in objects
        NSString *simpleString = [[NSString alloc] initWithFormat:@"Test string"];
        // call a method of NSSString
        NSLog(@"The string is %@", [simpleString uppercaseString]);
        
        // call a function
        simpleFunction();
        
        // create a custom object
        NSLog(@"Creating a custom class");
        SimpleClass *foo = [[SimpleClass alloc] init];
        // call a method of that object
        [foo simpleMethod];
        
        simpleFunction();
        
        // create an array
        NSMutableArray *lotsOfObjects = [[NSMutableArray alloc] init];
        for (int i = 0; i < 100 ; i++ ) {
            id temp = [[SimpleClass alloc] init];
            [lotsOfObjects addObject:temp];
        }
        
        NSLog(@"Now, out of the loop");
        
    }
    return 0;
}

