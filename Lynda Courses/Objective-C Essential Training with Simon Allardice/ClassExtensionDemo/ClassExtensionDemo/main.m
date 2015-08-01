//
//  main.m
//  ClassExtensionDemo
//
//  Created by Simon Allardice on 11/3/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Account *acc1 = [[Account alloc]init];
        [acc1 setAccountName:@"Freda"];
        [acc1 setAccountNumber:12345];
        [acc1 deposit:[NSDecimalNumber decimalNumberWithString:@"200.00"]];
        [acc1 withdraw:[NSDecimalNumber decimalNumberWithString:@"75.22"]];
        
        // acc1.balance = [NSDecimalNumber decimalNumberWithString:@"5999999.00"];
        NSLog(@"The balance, checked from main, is now: %@", acc1.balance.stringValue);
    }
    return 0;
}

