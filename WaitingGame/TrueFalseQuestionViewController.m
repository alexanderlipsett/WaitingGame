//
//  TrueFalseQuestionViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "TrueFalseQuestionViewController.h"

@interface TrueFalseQuestionViewController ()

@end

@implementation TrueFalseQuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithQuestion:(TrueFalseQuestion *)question andQuiz:(Quiz *)quiz
{
    self = [super self];
    if (self)
    {
        self.question = question;
        self.quiz = quiz;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIImage *comic = [UIImage imageNamed:self.question.comicName];
    [self.comic setImage:comic];
    
    [self.questionText setText:self.question.questionText];
    [self.trueButton setTitle:self.question.trueQuestionLabel
                     forState:UIControlStateNormal];
    [self.trueButton setTitle:self.question.trueQuestionLabel
                     forState:UIControlStateSelected];
    
    [self.falseButton setTitle:self.question.falseQuestionLabel
                      forState:UIControlStateNormal];
    [self.falseButton setTitle:self.question.falseQuestionLabel
                      forState:UIControlStateSelected];
     
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)truePressed:(id)sender
{
    if (!self.trueButton.selected)
    {
        [self.trueButton setSelected:YES];
        self.selectedAnswer = YES;
        if(self.falseButton.selected)
        {
            [self.falseButton setSelected:NO];
        }
    }
    else
    {
        [self.trueButton setSelected:NO];
        self.selectedAnswer = NO;
    }
    
}

-(IBAction)falsePressed:(id)sender
{
    if(!self.falseButton.selected)
    {
        [self.falseButton setSelected:YES];
        self.selectedAnswer = NO;
        if(self.trueButton.selected)
        {
            [self.trueButton setSelected:NO];
        }
    }
    else
    {
        [self.falseButton setSelected:NO];
        self.selectedAnswer = NO;
    }
    
}

-(IBAction)checkPressed:(id)sender
{
    if(self.selectedAnswer == self.question.correctAnswer)
    {
        //load correct view controller, pass along state info if neccessary
    }
    else
    {
        //load incorrect view controller, etc.
    }
    
}
@end
