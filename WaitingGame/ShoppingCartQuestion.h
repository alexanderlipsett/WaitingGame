//
//  ShoppingCartQuestion.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/17/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoppingCartQuestion : NSObject

@property (nonatomic, strong) NSString *comicName;
@property (nonatomic, strong) NSString *questionText;
@property (nonatomic, strong) NSDictionary *options;
@property (nonatomic, strong) NSArray *answers;

- (void) addAnswer:(NSString *) answer;
- (BOOL) checkAnswer;


@end
