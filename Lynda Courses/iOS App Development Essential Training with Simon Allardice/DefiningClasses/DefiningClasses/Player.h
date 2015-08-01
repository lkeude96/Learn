//
//  Player.h
//  DefiningClasses
//
//  Created by Eude K Lesperance on 10/3/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property int score;
// This will synthesize three things
// SETTER METHOD      -(void)setScore: (int) value
// GETTER METHOD      -(int) score
// INSTANCE VARIABLE  _score
@property (nonatomic) NSString *playerName;

-(void) jump;
-(void) fire;
-(void) restartLevel: (int) levelNumber;
@end
