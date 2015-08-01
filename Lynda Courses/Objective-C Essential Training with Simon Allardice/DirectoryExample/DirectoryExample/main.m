//
//  main.m
//  DirectoryExample
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // simple function call
        NSString *homeDirectory = NSHomeDirectory();
        
        NSString *desktopPath = [homeDirectory stringByAppendingPathComponent:@"Desktop"];
        
        NSString *fullPath = [desktopPath stringByAppendingPathComponent:@"Lynda Courses/Objective-C Essential Training with Simon Allardice/FileManagement/objc.pdf"];
        
        NSLog(@"Path is now: %@", fullPath);
        
        
        
//        NSFileManager *fileManager = [NSFileManager defaultManager];
//        NSURL *docsDirectory = [fileManager URLForDirectory:NSMoviesDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
//        
//        NSLog(@"The fileManager method returned: %@", docsDirectory);
        
        
        
    }
    return 0;
}
