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
#import "ThreeComicTemplate.h"
#import "ThreeComicViewController.h"

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
    self.view.backgroundColor = [UIColor colorWithRed:244/255.0f green:241/255.0f blue:215/255.0f alpha:1.0f];
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
    [quiz readPlist:@"sampleQuiz.plist"];
    
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
             initWithQuestion:(TrueFalseQuestion *)currentQuestion];
            [self.navigationController pushViewController:questionViewController animated:YES];
        }
        else if ([currentQuestion isKindOfClass:[MultipleChoiceQuestion class]])
        {
            MultipleChoiceQuestionViewController *questionViewController =
            [[MultipleChoiceQuestionViewController alloc]
             initWithQuestion:(MultipleChoiceQuestion *)currentQuestion];
            [self.navigationController pushViewController:questionViewController animated:YES];
        }
        else if ([currentQuestion isKindOfClass:[CategorizationQuestion class]])
        {
            CategorizationQuestionViewController *questionViewController =
            [[CategorizationQuestionViewController alloc]
             initWithQuestion:(CategorizationQuestion *)currentQuestion];
            [self.navigationController pushViewController:questionViewController animated:YES];
        }
        else if ([currentQuestion isKindOfClass:[ThreeComicTemplate class]])
        {
            //            ThreeComicViewController *comicViewController = [[ThreeComicViewController alloc]
            //                                                                       init...;
            //            [self.navigationController pushViewController:comicViewController animated:YES];
        }
        else
        {
            NSLog(@"Debugging time!!!");
        }
        
        [quiz incrementCurrentQuestion];
    }
}

@end
