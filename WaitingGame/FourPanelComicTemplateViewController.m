//
//  FourPanelComicTemplateViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

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

@interface FourPanelComicTemplateViewController ()

@end

@implementation FourPanelComicTemplateViewController

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
    
    UIImage *one = [UIImage imageNamed:self.template.comicOne];
    [self.comicOne setImage:one];
    
    UIImage *two = [UIImage imageNamed:self.template.comicTwo];
    [self.comicTwo setImage:two];
    
    UIImage *three = [UIImage imageNamed:self.template.comicThree];
    [self.comicThree setImage:three];
    
    UIImage *four = [UIImage imageNamed:self.template.comicFour];
    [self.comicFour setImage:four];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)initWithTemplate:(FourPanelComicTemplate *)template andQuiz:(Quiz *)quiz
{
    self = [super self];
    if (self)
    {
        self.template = template;
        self.quiz = quiz;
    }
    return self;
}

- (IBAction)nextPressed:(id)sender
{
    [self presentNextQuestion];
}

- (void)presentNextQuestion
{
    if (![self.quiz quizIsDone])
    {
        NSObject *currentQuestion = [[self.quiz questions] objectAtIndex:(NSInteger)[self.quiz currentQuestion]];
        if ([currentQuestion isKindOfClass:[TrueFalseQuestion class]])
        {
            TrueFalseQuestionViewController *questionViewController =
            [[TrueFalseQuestionViewController alloc]
             initWithQuestion:(TrueFalseQuestion *)currentQuestion andQuiz:self.quiz];
            [self.navigationController pushViewController:questionViewController animated:YES];
        }
        else if ([currentQuestion isKindOfClass:[MultipleChoiceQuestion class]])
        {
            MultipleChoiceQuestionViewController *questionViewController =
            [[MultipleChoiceQuestionViewController alloc]
             initWithQuestion:(MultipleChoiceQuestion *)currentQuestion andQuiz:self.quiz];
            [self.navigationController pushViewController:questionViewController animated:YES];
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
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}

@end
