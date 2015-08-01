//
//  main.m
//  EnumExample
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

enum seatPreference {
    window = 99,
    aisle = 199,
    middle = 299
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // short int bobSeatPreference = 1;
        enum seatPreference bobSeatPreference = window;
        enum seatPreference fredSeatPreference = middle;
        // enum seatPreference joanSeatPreference = front;
        
        // later
        if (bobSeatPreference == window) {
            // do something
        }
        
        NSLog(@"Fred wants %i", fredSeatPreference);
        
    }
    return 0;
}
