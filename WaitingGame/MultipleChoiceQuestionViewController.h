//
//  MultipleChoiceQuestionViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MultipleChoiceQuestion.h"

@interface MultipleChoiceQuestionViewController : UIViewController

@property (nonatomic) MultipleChoiceQuestion *question;

-(IBAction)optionOnePressed:(id)sender;
-(IBAction)optionTwoPressed:(id)sender;
-(IBAction)optionThreePressed:(id)sender;
-(IBAction)optionFourPressed:(id)sender;


@end
