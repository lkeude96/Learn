//
//  Account.m
//  ClassExtensionDemo
//
//  Created by Simon Allardice on 11/3/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import "Account.h"

@interface Account ()
@property NSDecimalNumber *balance;
@end


@implementation Account

- (id)init
{
    self = [super init];
    if (self) {
        // initialize the balance
        _balance = [NSDecimalNumber decimalNumberWithString:@"0.00"];
    }
    return self;
}

-(void)deposit:(NSDecimalNumber *)amount {
    // TODO: lots of complicated functionality.
    NSLog(@"Logging this deposit on %@ of %@", [NSDate date], amount);
    // check amount
    if (amount.integerValue > 10000) {
        NSLog(@"Large deposit. Place hold on funds.");
        // etc.
    }
    self.balance = [self.balance decimalNumberByAdding:amount];
    NSLog(@"Balance is now %@", self.balance);
}

-(void)withdraw:(NSDecimalNumber *)amount {
    NSLog(@"Logging this withdrawal  on %@", [NSDate date]);
    self.balance = [self.balance decimalNumberBySubtracting:amount];
    NSLog(@"Balance is now %@", self.balance);
    // TODO: check for negative balance, apply charges, etc.
}



@end
