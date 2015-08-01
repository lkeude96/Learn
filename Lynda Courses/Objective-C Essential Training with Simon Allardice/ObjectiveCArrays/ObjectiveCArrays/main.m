//
//  main.m
//  ObjectiveCArrays
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *myDate = [[NSDate alloc] init];
        
        // shorthand NSArray format
        NSArray *newArray = @[@"apple",@"orange",@"pear", myDate];
        
        
        NSMutableArray *myArray = [[NSMutableArray alloc] initWithObjects:@"one", @"two", @"three", myDate, nil];
        
        
        NSString *anotherString = @"Some more content";
        [myArray addObject:anotherString];
        [myArray removeObjectAtIndex:0];
        
        NSLog(@"The third object is %@", myArray[2]); //[myArray objectAtIndex:2]);
    
    }
    return 0;
}
