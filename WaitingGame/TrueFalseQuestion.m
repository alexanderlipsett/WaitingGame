//
//  TrueFalseQuestion.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "TrueFalseQuestion.h"

@implementation TrueFalseQuestion

- (BOOL) submitAnswer:(BOOL)answer
{
    if (answer == self.correctAnswer)
    {
        return TRUE;
    }
    
    else
    {
        return FALSE;
    }
}

@end
