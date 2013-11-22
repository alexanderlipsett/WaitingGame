//
//  EnglishSelectViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/19/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "SelectViewController.h"
#import "QuizTitleViewController.h"
#import "TrueFalseQuestion.h"
#import "TrueFalseQuestionViewController.h"
#import "MultipleChoiceQuestion.h"
#import "MultipleChoiceQuestionViewController.h"
#import "CategorizationQuestion.h"
#import "CategorizationQuestionViewController.h"
#import "FourPanelComicTemplate.h"
#import "FourPanelComicTemplateViewController.h"
#import "WideComicTemplate.h"
#import "WideComicTemplateViewController.h"

@interface SelectViewController ()

@end

@implementation SelectViewController

@synthesize quiz;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)basicMechanismsTapped:(id)sender
{
    quiz = [[Quiz alloc] init];
    [quiz readPlist:@"1. Understanding Diabetes"];
    
    [self presentNextQuestion];
}

- (void)preventionTapped:(id)sender
{
//    quiz = [[Quiz alloc] init];
//    [quiz readPlist:preventionPList];
//    
//    [self presentNextQuestion];
}

- (void)treatmentTapped:(id)sender
{
//    quiz = [[Quiz alloc] init];
//    [quiz readPlist:treatmentPList];
//    
//    [self presentNextQuestion];
}

- (void)potentialComplicationsTapped:(id)sender
{
//    quiz = [[Quiz alloc] init];
//    [quiz readPlist:potentialComplicationsPList];
//    
//    [self presentNextQuestion];
}

- (void)presentNextQuestion
{
    if (![quiz quizIsDone])
    {
        NSObject *currentQuestion = [[quiz questions] objectAtIndex:(NSInteger)[quiz currentQuestion]];
        if ([currentQuestion isKindOfClass:[TrueFalseQuestion class]])
        {
            TrueFalseQuestionViewController *questionViewController =
            [[TrueFalseQuestionViewController alloc]
             initWithQuestion:(TrueFalseQuestion *)currentQuestion andQuiz:quiz];
            [self.navigationController pushViewController:questionViewController animated:YES];
        }
        else if ([currentQuestion isKindOfClass:[MultipleChoiceQuestion class]])
        {
            MultipleChoiceQuestionViewController *questionViewController =
            [[MultipleChoiceQuestionViewController alloc]
             initWithQuestion:(MultipleChoiceQuestion *)currentQuestion andQuiz:quiz];
            [self.navigationController pushViewController:questionViewController animated:YES];
        }
        else if ([currentQuestion isKindOfClass:[FourPanelComicTemplate class]])
        {
           FourPanelComicTemplateViewController *panelViewController =
            [[FourPanelComicTemplateViewController alloc]
             initWithTemplate:(FourPanelComicTemplate *)currentQuestion andQuiz:quiz];
            [self.navigationController pushViewController:panelViewController animated:YES];
        }
        else if ([currentQuestion isKindOfClass:[WideComicTemplate class]])
        {
            WideComicTemplateViewController *panelViewController =
            [[WideComicTemplateViewController alloc]
             initWithTemplate:(WideComicTemplate *)currentQuestion andQuiz:quiz];
            [self.navigationController pushViewController:panelViewController animated:YES];
        }
        else
        {
            NSLog(@"Debugging time!!!");
        }
        
        [quiz incrementCurrentQuestion];
    }
    else
    {
        NSLog(@"Quiz is done!");
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}

@end
