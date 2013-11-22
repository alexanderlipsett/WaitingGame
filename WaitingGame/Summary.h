//
//  Summary.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Summary : NSObject

@property (nonatomic) NSString *goodTitle;
@property (nonatomic) NSString *goodComic;
@property (nonatomic) NSString *goodDescription;
@property (nonatomic) NSString *badTitle;
@property (nonatomic) NSString *badComic;
@property (nonatomic) NSString *badDescription;
@property (nonatomic) NSNumber *score;
@property (nonatomic) NSNumber *threshold;

@end
