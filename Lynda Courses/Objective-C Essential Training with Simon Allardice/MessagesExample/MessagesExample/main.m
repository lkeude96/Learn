//
//  main.m
//  MessagesExample
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int minutes = 60;
        int hours = 24;
        int days = 365;
        
        int minutesInAYear = minutes * hours * days;
        
        NSLog(@"There are %i minutes in a year", minutesInAYear);
        
    }
    return 0;
}
