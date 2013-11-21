//
//  ShoppingCartQuestion.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/17/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoppingCartQuestion : NSObject

@property (nonatomic) NSString *comicName;
@property (nonatomic) NSString *questionText;
@property (nonatomic) NSDictionary *options;
@property (nonatomic) NSArray *answers;

- (void) addAnswer:(NSString *) answer;
- (BOOL) checkAnswer;


@end
