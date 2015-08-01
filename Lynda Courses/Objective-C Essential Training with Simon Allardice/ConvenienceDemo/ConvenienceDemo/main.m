//
//  main.m
//  ConvenienceDemo
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSDate using "regular" alloc/init
        NSDate *myDate = [[NSDate alloc] init];
        
        // NSDate using alloc with specialized init
        NSDate *nextDate = [[NSDate alloc] initWithTimeIntervalSince1970:23234544];
        
        // NSDate using convenience class method
        NSDate *anotherDate = [NSDate date];
        
        // using specialized convenience method
        NSDate *yetAnotherDate = [NSDate dateWithTimeIntervalSince1970:23234544];
        
        // write 'em all out
        NSLog(@"The dates are \n %@ \n %@ \n %@ \n %@", myDate, nextDate, anotherDate, yetAnotherDate);
        
        // NSString using shorthand literal syntax
        NSString *message = @"Hello";
        
        // using alloc/init
        NSString *nextMessage =[[NSString alloc] initWithFormat:@"The word is: %@", message];
        
        // using convenience class method
        NSString *anotherMessage = [NSString stringWithFormat:@"The word is: %@", message];
        
    }
    return 0;
}
