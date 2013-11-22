//
//  CorrectViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "CorrectViewController.h"
#import "FourPanelComicTemplateViewController.h"
#import "FourPanelComicTemplate.h"
#import "SelectViewController.h"
#import "QuizTitleViewController.h"
#import "TrueFalseQuestion.h"
#import "TrueFalseQuestionViewController.h"
#import "MultipleChoiceQuestion.h"
#import "MultipleChoiceQuestionViewController.h"
#import "CategorizationQuestion.h"
#import "CategorizationQuestionViewController.h"
#import "WideComicTemplate.h"
#import "WideComicTemplateViewController.h"


@interface CorrectViewController ()

@end

@implementation CorrectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithCorrectTemplate:(Correct *)correctTemplate andQuiz:(Quiz *)quiz
{
    self = [super self];
    if (self)
    {
        self.correct = correctTemplate;
        self.quiz = quiz;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.description setText:self.correct.text];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextPressed:(id)sender
{
    NSLog(@"Next Pressed");
    [self presentNextQuestion];
}

- (void)presentNextQuestion
{
    if (![self.quiz quizIsDone])
    {
        NSLog(@"Quiz not over");
        
        NSObject *currentQuestion = [[self.quiz questions] objectAtIndex:(NSInteger)[self.quiz currentQuestion]];
        if ([currentQuestion isKindOfClass:[TrueFalseQuestion class]])
        {
            NSLog(@"creating tf controller");
            TrueFalseQuestionViewController *questionViewController =
            [[TrueFalseQuestionViewController alloc]
             initWithQuestion:(TrueFalseQuestion *)currentQuestion andQuiz:self.quiz];
            [self.navigationController pushViewController:questionViewController animated:YES];
        }
        else if ([currentQuestion isKindOfClass:[MultipleChoiceQuestion class]])
        {
            NSLog(@"creating mc controller");
            MultipleChoiceQuestionViewController *questionViewController =
            [[MultipleChoiceQuestionViewController alloc]
             initWithQuestion:(MultipleChoiceQuestion *)currentQuestion andQuiz:self.quiz];
            NSLog(@"created mc controller, trying to push");
            [self.navigationController pushViewController:questionViewController animated:YES];
            NSLog(@"pushed it real good");
        }
        else if ([currentQuestion isKindOfClass:[FourPanelComicTemplate class]])
        {
            FourPanelComicTemplateViewController *panelViewController =
            [[FourPanelComicTemplateViewController alloc]
             initWithTemplate:(FourPanelComicTemplate *)currentQuestion andQuiz:self.quiz];
            [self.navigationController pushViewController:panelViewController animated:YES];
        }
        else if ([currentQuestion isKindOfClass:[WideComicTemplate class]])
        {
            WideComicTemplateViewController *panelViewController =
            [[WideComicTemplateViewController alloc]
             initWithTemplate:(WideComicTemplate *)currentQuestion andQuiz:self.quiz];
            [self.navigationController pushViewController:panelViewController animated:YES];
        }
        else
        {
            NSLog(@"Debugging time!!!");
        }
        
        [self.quiz incrementCurrentQuestion];
    }
    else
    {
        NSLog(@"Quiz is done!");
    }
}

@end
