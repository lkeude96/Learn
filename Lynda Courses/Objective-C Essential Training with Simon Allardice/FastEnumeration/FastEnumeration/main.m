//
//  main.m
//  FastEnumeration
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *soundPath = @"/System/Library/Sounds";
        NSFileManager *fileManager = [[NSFileManager alloc] init];
        
        NSArray *soundFiles = [fileManager subpathsAtPath:soundPath];
        
        for (NSString *file in soundFiles) {
            NSLog(@"The file name is %@", file);
        }
    }
    return 0;
}
