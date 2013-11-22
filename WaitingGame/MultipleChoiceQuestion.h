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
@property (nonatomic, strong) NSArray *options;
@property (nonatomic) NSMutableArray *answers;
@property (nonatomic) BOOL isPictureBased;
@property (nonatomic) NSString *correctResponse;
@property (nonatomic) NSString *incorrectResponse;


-(BOOL)submitAnswers:(NSArray *)answers;

-(id)initWithComicName:(NSString *)comicName questionText:(NSString *)questionText options:(NSArray *)options answers:(NSArray *)answers isPictureBased:(BOOL)pics;



@end
