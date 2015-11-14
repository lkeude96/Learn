//
//  AppDelegate.m
//  ObjC vs Swift
//
//  Created by Eude Kinsley Lesperance on 11/14/15.
//  Copyright © 2015 uoft. All rights reserved.
//

#import "AppDelegate.h"
#import "UTCity.h"

@implementation AppDelegate

- (void)loadStuff {
    NSArray * cities = @[
                         [[UTCity alloc] initWithName:@"Toronto" population:3000000],
                         [[UTCity alloc] initWithName:@"Vancouver" population:5]
                         ];
    UTCountry * canada = [[UTCountry alloc] initWithName:@"Canada" cities:cities];
    
    UTCity * vancouver = [canada findCityWithName:@"Vancouver"];
    UTCity * largestCity = canada.cityWithLargestPopulation;
    UTCity * largestCity2 = [canada cityWithLargestPopulation];
}
@end