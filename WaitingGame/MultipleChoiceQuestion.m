//
//  MultipleChoiceQuestion.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/17/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "MultipleChoiceQuestion.h"

@implementation MultipleChoiceQuestion

- (BOOL) submitAnswer:(NSInteger)index
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

-(id)initWithComicName:(NSString *)comicName questionText:(NSString *)questionText options:(NSArray *)options correctAnswer:(NSInteger)correctAnswer isPictureBased:(BOOL)pics
{
    self = [super init];
    
    
    if (self){
        _comicName = comicName;
        _questionText = questionText;
        _options = options;
        _correctAnswer = correctAnswer;
        _isPictureBased = pics;
    }
    
    return self;
    
}

@end
