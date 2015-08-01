//
//  main.m
//  CategoryDemo
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+FormattingOptions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *message = @"The quick brown fox jumped over the lazy dog.";
        
        // use the new method
        NSLog(@"The result is %@",[message convertWhiteSpace]);
        
    }
    return 0;
}

