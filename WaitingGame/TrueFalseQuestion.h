//
//  TrueFalseQuestion.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TrueFalseQuestion : NSObject

@property (nonatomic) NSString *comicName;
@property (nonatomic) NSString *questionText;
@property (nonatomic) BOOL correctAnswer;


- (BOOL)submitAnswer:(BOOL) answer;

@end
