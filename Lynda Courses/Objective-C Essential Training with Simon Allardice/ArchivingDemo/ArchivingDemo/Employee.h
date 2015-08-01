//
//  Employee.h
//  ArchivingDemo
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject <NSCoding>

@property NSString *firstName;
@property NSString *lastName;
@property NSDate *hireDate;
@property int employeeNumber;

@end
