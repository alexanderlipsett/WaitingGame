//
//  TrueFalseQuestionViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TrueFalseQuestion.h"

@interface TrueFalseQuestionViewController : UIViewController

@property (nonatomic) TrueFalseQuestion *question;
@property (strong, nonatomic) IBOutlet UIImageView *comic;
@property (strong, nonatomic) IBOutlet UILabel *questionText;
@property (strong, nonatomic) IBOutlet UIButton *trueButton;
@property (strong, nonatomic) IBOutlet UIButton *falseButton;
@property (nonatomic) BOOL selectedAnswer;


-(id)initWithQuestion:(TrueFalseQuestion *)question;
-(IBAction)truePressed:(id)sender;
-(IBAction)falsePressed:(id)sender;
-(IBAction)checkPressed:(id)sender;


@end
