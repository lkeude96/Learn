//
//  main.m
//  IfExample
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int stormCategory = 4;
        
        if (stormCategory > 1) {
            NSLog(@"Storm's a-coming!");
        }
        
        if (stormCategory == 4 || stormCategory == 5) {
            NSLog(@"Catastrophe!");
        }

    }
    return 0;
}
