//
//  main.m
//  BoolsAndChars
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char firstLetter = 'h';  // use single quotes for chars. not doublequotes.
        
        char anotherLetter = '!';
        char someDigit = '6';
        
        // format string use %c for chars
        NSLog(@"My chars are %c, %c and %c",firstLetter, anotherLetter, someDigit);
        
        // bool (lowercase) technically does work
        bool notRecommended = true;
        // but we're Objective-C
        BOOL isThisTheRightWay = YES;
        
        NSLog(@"My boolean value is %i", isThisTheRightWay);
        
    }
    return 0;
}
