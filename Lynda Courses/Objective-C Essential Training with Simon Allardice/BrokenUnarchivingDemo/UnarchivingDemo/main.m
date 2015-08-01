//
//  main.m
//  UnarchivingDemo
//
//  Created by Simon Allardice on 11/2/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"


NSString* getPropertyListPath() {
    // use the Documents directory (preferred URL method)
    NSURL *documentDir = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
    NSURL *plist = [documentDir URLByAppendingPathComponent:@"employees.plist"];
    return plist.path;
}

void createAndArchiveObjects(NSString *filePath) {
    
    NSLog(@"Creating objects manually.");
    
    Employee *bob = [[Employee alloc]init];
    [bob setFirstName:@"Robert"];
    [bob setLastName:@"Hernandez"];
    [bob setEmployeeNumber:12345];
    [bob setHireDate:[NSDate date]];
    
    Employee *alice = [[Employee alloc]init];
    alice.firstName = @"Alice";
    alice.lastName = @"Fowler";
    alice.employeeNumber = 45678;
    alice.hireDate = [NSDate dateWithString:@"2010-03-24 09:00:00 -0800"];
    
    // create array
    NSMutableArray *employees = [[NSMutableArray alloc]init];
    [employees addObject:bob];
    [employees addObject:alice];
    
    // archive the entire array
    [NSKeyedArchiver archiveRootObject:employees toFile:filePath];
    
    NSLog(@"Objects created and archived!");
    
}

void unarchiveSavedObjects(NSString *filePath) {
    
    // TODO: add unarchiving code.
    
}


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSString *path = getPropertyListPath();
        
        // check if file exists
        if ( [[NSFileManager defaultManager] fileExistsAtPath:path]) {
            // YES, the file's there - load them in
            unarchiveSavedObjects(path);
        } else {
            // NO there's plist file - so create it.
            createAndArchiveObjects(path);
        }
        
    }
    return 0;
}
