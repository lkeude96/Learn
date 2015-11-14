//
//  UTCity.m
//  ObjC vs Swift
//
//  Created by Eude Kinsley Lesperance on 11/14/15.
//  Copyright © 2015 uoft. All rights reserved.
//

#import "UTCity.h"

@implementation UTCity

- (instancetype)initWithName:(NSString *) name population: (NSInteger) population
{
    self = [super init];
    if (self) {
        self.name = name;
        self.population = population;
    }
    return self;
}


@end
