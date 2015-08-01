//
//  main.m
//  DynamicTypingDemo
//
//  Created by Simon Allardice on 11/3/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NSMutableArray* createRandomObjects() {
    
    NSMutableArray *bunchOfObjects = [[NSMutableArray alloc]init];
    
    for (int i = 0; i < 100; i++) {
        // create random number between 0 and 99
        int random = arc4random_uniform(100);
        // even?
        if (random % 2 == 0) {
            NSString *s = @"Exciting string object";
            [bunchOfObjects addObject:s];
        } else {
            NSDate *d = [[NSDate alloc]init];
            [bunchOfObjects addObject:d];
        }
    }
    return bunchOfObjects;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //create some statically typed objects
        NSDate *anObject = [NSDate dateWithNaturalLanguageString:@"1st of Jan"];
        NSString *anotherObject = @"Hello world";

        NSLog(@"The object is %@", anObject);
        NSLog(@"The object is %@", anotherObject);
        NSLog(@"Uppercased is: %@", [anotherObject uppercaseString]);
        
        NSMutableArray *bunchOfObjects = createRandomObjects();
        
        // I'm not sure what each one is!
        for (id currentObject in bunchOfObjects) {
           // NSLog(@"The object is: %@", [currentObject uppercaseString]);
            
            // check class
            if ([currentObject isKindOfClass:[NSString class]]) {
                NSLog(@"The object is: %@", [currentObject uppercaseString]);
            } else {
                NSLog(@"it's a date");
            }
            
            if ([currentObject respondsToSelector:@selector(uppercaseString)]) {
                NSLog(@"It responds to that method with: %@", [currentObject uppercaseString]);
            } else {
                NSLog(@"Object doesn't respond to that method");
            }
        }
        
        
        
        
        
    }
    return 0;
}

