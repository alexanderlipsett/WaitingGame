//
//  CategorizationQuestion.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/17/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "CategorizationQuestion.h"

@implementation CategorizationQuestion

-(id)initWithComicName:(NSString *)comicName questionText:(NSString *)questionText options:(NSDictionary *)options
{
    self = [super self];
    
    if (self){
        _comicName = comicName;
        _questionText = questionText;
        _options = options;
    }
    
    return self;
}



@end
