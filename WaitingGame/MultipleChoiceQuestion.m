//
//  MultipleChoiceQuestion.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/17/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "MultipleChoiceQuestion.h"

@implementation MultipleChoiceQuestion

- (BOOL) submitAnswer:(NSArray *)answers
{
    if ([answers objectAtIndex:0] == [self.answers objectAtIndex:0] &&
        [answers objectAtIndex:1] == [self.answers objectAtIndex:1] &&
        [answers objectAtIndex:2] == [self.answers objectAtIndex:2] &&
        [answers objectAtIndex:3] == [self.answers objectAtIndex:3])
        
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

-(id)initWithComicName:(NSString *)comicName questionText:(NSString *)questionText options:(NSArray *)options answers:(NSArray *)answers isPictureBased:(BOOL)pics
{
    self = [super init];
    
    
    if (self){
        _comicName = comicName;
        _questionText = questionText;
        _options = options;
        _answers = answers;
        _isPictureBased = pics;
    }
    
    return self;
    
}

@end
