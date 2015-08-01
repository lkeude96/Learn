//
//  main.m
//  FileManagement
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // most file operations are done with NSFileManager class
        NSFileManager *fileManager = [[NSFileManager alloc] init];
        
        // let say we have a pdf file called objc.pdf on my desktop
        NSString *simplePath = @"/Users/kinsley/Desktop/Lynda Courses/Objective-C Essential Training with Simon Allardice/FileManagement/objc.pdf";
        
        if ([fileManager fileExistsAtPath:simplePath]) {
            NSLog(@"That file exits");
        } else {
            NSLog(@"That file doesn't exist");
        }
        
        // get an NSDictionary of attributes
        NSDictionary *fileAttributes = [fileManager
                                        attributesOfItemAtPath:simplePath
                                        error:nil];
        
        for (NSString *key in fileAttributes) {
            NSLog(@"The attribute key is: %@ and the value is %@", key, fileAttributes[key]);
        }
    }
    return 0;
}
