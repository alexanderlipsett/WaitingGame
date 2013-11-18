//
//  MultipleChoiceQuestion.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/17/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "MultipleChoiceQuestion.h"

@implementation MultipleChoiceQuestion

- (BOOL) submitAnswer:(NSInteger *)index
{
    if (index == self.correctAnswer)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

@end
