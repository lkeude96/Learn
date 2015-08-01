//
//  Employee.h
//  ArchivingDemo
//
//  Created by Simon Allardice on 11/2/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject <NSCoding>

@property NSString *firstName;
@property NSString *lastName;
@property NSDate *hireDate;
@property int employeeNumber;

@end
