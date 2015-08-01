//
//  Account.h
//  ClassExtensionDemo
//
//  Created by Simon Allardice on 11/3/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject

@property NSString *accountName;
@property int accountNumber;
@property (readonly) NSDecimalNumber *balance;

-(void) deposit: (NSDecimalNumber *) amount;
-(void) withdraw: (NSDecimalNumber *) amount;


@end
