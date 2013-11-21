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
<<<<<<< HEAD
    NSDictionary *quiz = [[NSDictionary alloc] initWithContentsOfFile:pListPath];
    
    
=======
    NSDictionary *quiz;
>>>>>>> a1ef9e5bd7fab74bfef9c795d84749a6c26f8bed
    
}
@end
