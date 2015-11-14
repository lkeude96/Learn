//
//  UTCity.h
//  ObjC vs Swift
//
//  Created by Eude Kinsley Lesperance on 11/14/15.
//  Copyright © 2015 uoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTCity : NSObject

@property (strong, nonatomic) NSString * name;
@property (assign, nonatomic) NSInteger population;

- (instancetype)initWithName:(NSString *)name population:(NSInteger) population;
@end

@interface UTCountry : NSObject

@property (strong, nonatomic) NSString * name;
@property (assign, nonatomic) NSArray * cities;

- (instancetype)initWithName:(NSString *) name cities:(NSArray *) cities;

@end