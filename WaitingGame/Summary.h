//
//  Summary.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Summary : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *comic;
@property (nonatomic) NSString *description;
@property (nonatomic) NSNumber *score;
@property (nonatomic) NSNumber *total;

@end
