//
//  Quiz.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quiz : NSObject

@property NSMutableArray *questions;
@property int currentQuestion;
@property int totalQuestions;
@property NSString *quizTitle;

-(void)readPlist:(NSString *)quizName;
-(BOOL)quizIsDone;
-(void)incrementCurrentQuestion;

@end
