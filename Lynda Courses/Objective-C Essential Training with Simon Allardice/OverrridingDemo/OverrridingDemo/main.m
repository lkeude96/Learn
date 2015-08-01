//
//  main.m
//  OverrridingDemo
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Article *a = [[Article alloc] init];
        Article *b = [[Article alloc] init];
        Article *c = [[Article alloc] init];
        
        // call description
        NSDate *myDate = [NSDate dateWithNaturalLanguageString:@"jan 1st last year"];
        NSLog(@"myDate: %@", [myDate description]);
        
        // new custom objects
        NSLog(@"Articles:\n %@ \n %@ \n %@", a, b, c);
        
        // not all classes have (or need) a custom description
        NSFileManager *myFM = [[NSFileManager alloc] init];
        NSLog(@"myFM: %@", myFM);
    }
    return 0;
}
