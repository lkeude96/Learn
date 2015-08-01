//
//  main.m
//  ArchivingDemo
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create employee object
        Employee *bob = [[Employee alloc] init];
        [bob setFirstName:@"Robert"];
        [bob setLastName:@"Hernandez"];
        [bob setEmployeeNumber:12345];
        [bob setHireDate:[NSDate date]];
        
        // create another, using dot syntax for properties
        Employee *alice = [[Employee alloc] init];
        alice.firstName = @"Alice";
        alice.lastName = @"Fowler";
        alice.employeeNumber = 45678;
        alice.hireDate = [NSDate dateWithString:@"2010-03-24 09:00:00 -0800"];
        
        NSLog(@"First Employee: \n%@", bob);
        NSLog(@"Second Employee: \n%@", alice);
        
        //
        // create an array to hold multiple employees
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        [employees addObject:bob];
        [employees addObject:alice];
        // etc, etc.
        
        [NSKeyedArchiver archiveRootObject:employees toFile:@"/Users/kinsley/Desktop/Lynda Courses/Objective-C Essential Training with Simon Allardice/ArchivingDemo/employees.plist"];
    }
    return 0;
}
