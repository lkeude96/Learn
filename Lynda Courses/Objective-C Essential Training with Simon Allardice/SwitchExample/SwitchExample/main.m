//
//  main.m
//  SwitchExample
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create a variable
        int stormCategory = 4;
        
        switch (stormCategory) {
            case 1:
                NSLog(@"Time to get indoors.");
                break;
            case 2:
                NSLog(@"Extensive damage - run and hide!");
                break;
            case 3:
                NSLog(@"Devastating damage! Oh no!");
                break;
            case 4:
            case 5:
                NSLog(@"Catastrophic damage! Game over, man!");
                break;
            default:
                NSLog(@"Readings are off the scale. We haven't encountered this phenomen before!");
                break;
        }
    }
    return 0;
}
