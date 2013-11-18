//
//  MultipleChoiceQuestion.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/17/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MultipleChoiceQuestion : NSObject

@property (nonatomic, strong) NSString *comicName;
@property (nonatomic, strong) NSString *questionText;
@property (nonatomic, strong) NSMutableArray *options;
@property (nonatomic) NSInteger *correctAnswer;


-(BOOL) submitAnswer:(NSInteger *)index;


@end
