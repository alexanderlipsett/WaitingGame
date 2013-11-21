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
@property (weak, nonatomic) IBOutlet UILabel *questionText;
@property (weak, nonatomic) IBOutlet UIButton *optionOne;
@property (weak, nonatomic) IBOutlet UIButton *optionTwo;
@property (weak, nonatomic) IBOutlet UIButton *optionThree;
@property (weak, nonatomic) IBOutlet UIButton *optionFour;

-(IBAction)optionOnePressed:(id)sender;
-(IBAction)optionTwoPressed:(id)sender;
-(IBAction)optionThreePressed:(id)sender;
-(IBAction)optionFourPressed:(id)sender;


@end
