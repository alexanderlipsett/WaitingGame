//
//  Quiz.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "Quiz.h"

@implementation Quiz

-(void)addQuestions:(NSString *) quizName
{
    NSString *pListPath = [[NSBundle mainBundle] pathForResource:quizName ofType:@"plist"];
    NSDictionary *quiz = [[NSDictionary alloc] initWithContentsOfFile:pListPath];
    
    
    
}
@end
