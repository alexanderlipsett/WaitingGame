//
//  MultipleChoiceQuestionViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MultipleChoiceQuestion.h"
#import "Quiz.h"

@interface MultipleChoiceQuestionViewController : UIViewController

@property (nonatomic) MultipleChoiceQuestion *question;
@property (nonatomic) Quiz *quiz;
@property (nonatomic) IBOutlet UILabel *questionText;
@property (nonatomic) IBOutlet UIButton *optionOne;
@property (nonatomic) IBOutlet UIButton *optionTwo;
@property (nonatomic) IBOutlet UIButton *optionThree;
@property (nonatomic) IBOutlet UIButton *optionFour;
@property (nonatomic) NSMutableArray *answers;

-(id)initWithQuestion:(MultipleChoiceQuestion *)question andQuiz:(Quiz *)quiz;
-(IBAction)optionOnePressed:(id)sender;
-(IBAction)optionTwoPressed:(id)sender;
-(IBAction)optionThreePressed:(id)sender;
-(IBAction)optionFourPressed:(id)sender;
-(IBAction)checkButtonPressed:(id)sender;


@end
