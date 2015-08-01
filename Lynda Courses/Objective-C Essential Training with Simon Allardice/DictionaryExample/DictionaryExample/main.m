//
//  main.m
//  DictionaryExample
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *states =[[NSMutableDictionary alloc]
                               initWithObjectsAndKeys:@"Arizona",@"AZ",
                               @"California",@"CA",
                               @"Colorado",@"CO",
                               @"Hawaii", @"HI",
                               @"New Mexico",@"NM"
                               , nil];
        
        // only with mutable dictionary
        [states setObject:@"Florida" forKey:@"FL"];
        
        NSString *someState = @"AZ";
        NSLog(@" %@ is for %@", someState, [states objectForKey:someState]);
        
        // shorthand - like an array
        NSLog(@" %@ is for %@", someState, states[@"AZ"]);
        
        
        
        NSDictionary *quicker = @{
                                  @"AZ" : @"Arizona",
                                  @"CA" : @"California",
                                  @"FL" : @"Florida"
                                  };
        
        
    }
    return 0;
}
