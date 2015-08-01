//
//  main.m
//  ExistingClasses
//
//  Created by Eude K Lesperance on 10/1/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *message = @"Hello";
        NSString *shoutyMessage = [message uppercaseString];
        
        NSLog(@"The NSString object is %@ and %@", message, shoutyMessage);
        
        NSDate *today = [NSDate date];
        NSLog(@"The new NSDate object is: %@", today); 
    }
    return 0;
}
