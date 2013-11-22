//
//  CategorizationQuestion.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/17/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CategorizationQuestion : NSObject

@property (strong, nonatomic) NSString *comicName;
@property (strong, nonatomic) NSString *questionText;
@property (strong, nonatomic) NSDictionary *options;
@property (nonatomic) NSString *correctResponse;
@property (nonatomic) NSString *incorrectResponse;

-(id)initWithComicName:(NSString *)comicName questionText:(NSString *)comicText options:(NSDictionary *)options;
-(BOOL)submitAnswers

@end
