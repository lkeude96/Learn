//
//  main.m
//  CustomClassExample
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Employee *fred = [[Employee alloc] init];
        
        // call a method of our new object
        [fred someMethod];
        
        // change the a property of our new object
        [fred setName:@"Fred Smith"];
    }
    return 0;
}
