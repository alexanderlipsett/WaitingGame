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
@property (nonatomic) NSInteger correctAnswer;
@property (nonatomic) BOOL isPictureBased;


-(BOOL)submitAnswer:(NSInteger)index;
-(id)initWithComicName:(NSString *)comicName questionText:(NSString *)questionText options:(NSArray *)options correctAnswer:(NSInteger)correctAnswer isPictureBased:(BOOL)pics;



@end
