//
//  main.m
//  PassByValueStarter
//
//  Created by Eude K Lesperance on 9/30/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>


// new function - takes one int and adds to it
int performAddition(int scoreParameter) {
    scoreParameter += 5000;
    NSLog(@"Inside the function, the value is now: %i", scoreParameter);
    return scoreParameter;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // define new variable
        int highScore = 10;
        
        // pass it into the function
        highScore = performAddition(highScore);
        
        // write out value
        NSLog(@"back in main, highScore is : %i", highScore);
    }
    return 0;
}
