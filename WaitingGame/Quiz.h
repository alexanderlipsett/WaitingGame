//
//  Quiz.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quiz : NSObject

@property NSArray *questions;

-(void)addQuestions:(NSString *) quizName;

@end
