//
//  main.m
//  CommonCompileIssues
//
//  Created by Simon Allardice on 11/3/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyNewClass.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // Issue #1
//        NSString *myString = [NSString stringWithFormat:@"Here's the first problem!"];
//        NSLog(@"The string is %@", myString);
//        
//        // Issue #2
//        int a = 5, b = 10;
//        if ( a == b ) {
//            NSLog(@"Yes, they're equal");
//        }
//        
//        // Issue #3 - you need the #import statement for this to work.
//        MyNewClass *myObj = [[MyNewClass alloc] init];
//        [myObj someMethod];
//        
//        // Issue #4
//        NSLog(@"The new object is: %@", myObj);
//        
//        // Issue #5
//        NSLog(@"Hello, World!");
//        
//        
//        // Issue #6
//        NSString *newString = @"This is a simple message";
//        NSLog(@"What's wrong with a simple message like: %@", newString );
//        
//        // Issue #7
//        int c = 5, d = 10;
//        if ( c == d )
//        {
//            NSLog(@"Yes, they're equal");
//        }
        
//        //  Issue #8 (issue is in MyNewClass)
//        MyNewClass *mySecondObj = [[MyNewClass alloc] init];
//        NSString *result = [mySecondObj someMethod];
//        NSLog(@"The result is %@", result);
//        
//        // Issue #9
//        MyNewClass *myThirdObj = [[MyNewClass alloc] init];
//        NSLog(@"The object is %@", [myThirdObj someMethod]);

        
        // Watch out for these!
//        NSString *mine = @"Test";
//        int foo = 55;
//        float bar = 5.5;
 
        
    }
    return 0;
}

