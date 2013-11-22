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
@property (nonatomic) NSMutableArray *answers;
@property (strong, nonatomic) IBOutlet UIImageView *comicName;
@property (strong, nonatomic) IBOutlet UILabel *questionText;
@property (strong, nonatomic) IBOutlet UIButton *option1;
@property (strong, nonatomic) IBOutlet UIButton *option2;
@property (strong, nonatomic) IBOutlet UIButton *option3;
@property (strong, nonatomic) IBOutlet UIButton *option4;

- (IBAction)optionOnePressed:(id)sender;
- (IBAction)optionTwoPressed:(id)sender;
- (IBAction)optionThreePressed:(id)sender;
- (IBAction)optionFourPressed:(id)sender;
- (IBAction)nextButtonPressed:(id)sender;

-(id)initWithQuestion:(MultipleChoiceQuestion *)question andQuiz:(Quiz *)quiz;




@end
