//
//  main.m
//  ReadWriteStrings
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // get the Documents directory
        NSURL *documentsDir = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        
        // create a full Path
        NSURL *full = [documentsDir URLByAppendingPathComponent:@"sample.txt"];
        
        // load the string
        NSMutableString *content = [[NSMutableString alloc] initWithContentsOfURL:full encoding:NSUTF8StringEncoding error:nil];
        
        // new string
        [content appendString:@"CHANGED"];
        
        // destination URL
        NSURL *saveLocation = [documentsDir URLByAppendingPathComponent:@"saved.txt"];
        
        [content writeToURL:saveLocation atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
        
        
    }
    return 0;
}
