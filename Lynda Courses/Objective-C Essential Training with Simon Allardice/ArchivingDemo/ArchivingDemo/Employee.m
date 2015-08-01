//
//  Employee.m
//  ArchivingDemo
//
//  Created by Eude K Lesperance on 10/2/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.firstName forKey:@"fname"];
    [aCoder encodeObject:self.lastName forKey:@"lname"];
    [aCoder encodeObject:self.hireDate forKey:@"hdate"];
    [aCoder encodeInt:self.employeeNumber forKey:@"empnum"];
    
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    
    self =[super init];
    if (self) {
        // our code
        _firstName = [aDecoder decodeObjectForKey:@"fname"];
        _lastName = [aDecoder decodeObjectForKey:@"lname"];
        _hireDate = [aDecoder decodeObjectForKey:@"hdate"];
        _employeeNumber = [aDecoder decodeIntForKey:@"empnum"];
    }
    return self;
}

-(NSString *) description {
    NSString *desc = [NSString stringWithFormat:@"\t Employee: %i \n \t Name: %@ %@ \n \t Was hired on: %@ \n -----",[self employeeNumber], [self firstName], [self lastName], [self hireDate]];
    return desc;
}
@end
